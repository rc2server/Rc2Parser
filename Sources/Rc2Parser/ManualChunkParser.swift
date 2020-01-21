//
//  ManualChunkParser.swift
//  
//
//  Created by Mark Lilback on 1/21/20.
//

import Foundation
import Antlr4
import Logging

/// A manually written parser that uses Rc2Lexer. The generated parrser is slow, and this is fast. It just doesn't parse R code in code chunks
public class ManualChunkParser {
	
	/// Errors that can be thrown by this class
	/// - Tag: Errors
	public enum Error: String, Swift.Error {
		/// unexpected input, such as the end of a code block without any code preceeding it
		case mismatchedTokens
	}
	
	private let typesToWaitFor = [Rc2Lexer.EQ_END, Rc2Lexer.CODE_END, Rc2Lexer.IEQ_END, Rc2Lexer.IC_END]
	private var chunks: [InternalChunk] = []
	private var lexer: Rc2Lexer?
	private var waitingFor = 0
	private var startingToken: Token?
	private var previousToken: Token?
	private var argToken: Token?
	private var contents = ""
	private var fullContent = ""

	/// the parsed chunks
	/// - Tag: parsedChunks
	public var parsedChunks: ChunkCollection { return ChunkCollection(chunks: chunks) }
	
	
	/// Creates and executes a parser, placing output in [parsedChunks](x-source-tag://parsedChunks)
	/// - Parameter text: the Rmd content to parse
	/// - Throws: [MaunalChunkParser.Error](x-source-tag://Errors)
	public init(text: String) throws {
		fullContent = text
		lexer = Rc2Lexer(ANTLRInputStream(text))
		try performParse()
	}

	private func performParse() throws {
		guard let lexer = lexer else { fatalError() }
		var aToken = try lexer.nextToken()
		repeat {
			defer {
				let tmpPrev = aToken
				aToken = try! lexer.nextToken()
				// EOF seems to have it's start at EOF, and stop at whatever was before eof
				let pstop = previousToken?.getStopIndex() ?? 0
				if aToken.getType() == Lexer.EOF, aToken.getStopIndex() < aToken.getStartIndex() {
					contents = String(fullContent[fullContent.index(fullContent.startIndex, offsetBy: pstop)..<fullContent.index(fullContent.startIndex, offsetBy: aToken.getStartIndex())])
					if contents.count > 0 {
						let chunk = MarkdownChunk(content: contents, line: previousToken!.getLine(), startIndex: aToken.getStartIndex(), stopIndex: aToken.getStopIndex())
						addMarkdown(chunk: chunk)
					}
				}
				previousToken = tmpPrev
			}
			if aToken.getType() == Rc2Lexer.MDOWN { continue }
			if aToken.getType() == Rc2Lexer.CODE_ARG { argToken = aToken }
			if aToken.getType() == waitingFor {
				let chunk = try handleWiating(for: waitingFor, token: aToken)
				if let actualChunk = chunk { chunks.append(actualChunk) }
				waitingFor = 0
				startingToken = nil
				continue
			}
			
			switch aToken.getType() {
			case Rc2Lexer.IEQ_START:
				checkForPreviousMarkdown(aToken: aToken, endType: Rc2Lexer.IEQ_END)
				startingToken = aToken
			case Rc2Lexer.CODE_START:
				checkForPreviousMarkdown(aToken: aToken, endType: Rc2Lexer.CODE_END)
				startingToken = aToken
			case Rc2Lexer.IC_START:
				checkForPreviousMarkdown(aToken: aToken, endType: Rc2Lexer.IC_END)
				startingToken = aToken
			case Rc2Lexer.EQ_START:
				checkForPreviousMarkdown(aToken: aToken, endType: Rc2Lexer.EQ_END)
				startingToken = aToken
			case Rc2Lexer.MDOWN:
				parserLog.debug("got mdown: \(contents)")
				contents = ""
			default:
				contents += aToken.getText() ?? ""
				continue
			}
		} while aToken.getType() != Lexer.EOF
		parserLog.debug("\n\ngot \(chunks.count) chunks")
		chunks.forEach { print("\($0.type)") }
	}
	
	private func handleWiating(for: Int, token: Token) throws -> InternalChunk? {
		guard let stoken = startingToken else { fatalError("can't find end tag without start") }
		// if there is content, output as markdown
		var range = fullContent.index(fullContent.startIndex, offsetBy: stoken.getStartIndex())...fullContent.index(fullContent.startIndex, offsetBy: token.getStopIndex())
		contents = ""
		if waitingFor == Rc2Lexer.CODE_END, fullContent[range].last == "\n" {
			contents = "\n"
			range = fullContent.index(fullContent.startIndex, offsetBy: stoken.getStartIndex())...fullContent.index(fullContent.startIndex, offsetBy: token.getStopIndex()-1)
		}
		var chunk: InternalChunk?
		switch token.getType() {
		case Rc2Lexer.EQ_END:
			guard let codeToken = previousToken, codeToken.getType() == Rc2Lexer.EQ_CODE else { throw Error.mismatchedTokens }
			chunk = InternalEquationChunk(content: String(fullContent[range]), startToken: startingToken!, codeToken: codeToken, endToken: token)
		case Rc2Lexer.CODE_END:
			guard let arg = argToken,
				let codeToken = previousToken, codeToken.getType() == Rc2Lexer.CODE
				else { throw Error.mismatchedTokens }
			chunk = InternalCodeChunk(content: String(fullContent[range]), startToken: startingToken!, argToken: arg, codeToken: codeToken, endToken: token)
		case Rc2Lexer.IEQ_END:
			guard let codeToken = previousToken, codeToken.getType() == Rc2Lexer.IEQ_CODE else { throw Error.mismatchedTokens }
			chunk = InlineInternalEquation(content: String(fullContent[range]), startToken: startingToken!, codeToken: codeToken, endToken: token)
		case Rc2Lexer.IC_END:
			guard let codeToken = previousToken, codeToken.getType() == Rc2Lexer.IC_CODE else { throw Error.mismatchedTokens }
			chunk = InlineInternalCodeChunk(content: String(fullContent[range]), startToken: startingToken!, codeToken: codeToken, endToken: token)
		default:
			break
		}
		return chunk
	}
	
	private func addMarkdown (chunk: MarkdownChunk) {
		if let lastchunk = chunks.last, let prevChunk = lastchunk as? MarkdownChunk {
			prevChunk.append(markdown: chunk)
		} else {
			chunks.append(chunk)
		}
	}

	private func checkForPreviousMarkdown (aToken: Token, endType: Int) {
		guard typesToWaitFor.contains(endType) else { fatalError("unsupported end token") }
		let previousStop = previousToken?.getStopIndex() ?? 0
		waitingFor = endType
		if aToken.getStartIndex() > previousStop {
			let rng = fullContent.index(fullContent.startIndex, offsetBy: previousStop)..<fullContent.index(fullContent.startIndex, offsetBy: aToken.getStartIndex())
			contents += String(fullContent[rng])
			if contents.count > 0 {
				let chunk = MarkdownChunk(content: contents, line: previousToken?.getLine() ?? 0, startIndex: aToken.getStartIndex(), stopIndex: aToken.getStopIndex())
				addMarkdown(chunk: chunk)
				contents = ""
			}
		}
	}
}
