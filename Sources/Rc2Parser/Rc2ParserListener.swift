//
//  Rc2ParserListener.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4
import Logging

fileprivate extension Token {
	var typeName: String { return Rc2Lexer.ruleNames[(getType()) - 1] }
}


enum ListenerErrorType {
	case inlineChunkAtRoot
	case invalidCodeOrder
}

struct ListenerError: Error {
	var type: ListenerErrorType
	var lineNumber: Int
	var charIndex: Int
	var description: String?
}

class ErrorReporter {
	var errors = [ListenerError]()
}

class Rc2ParserListener: Rc2RawParserBaseListener {
	var chunks: [AnyChunk] = [] as! [AnyChunk]
	var curContext: Rc2RawParser.ChunkContext?
	var curChunk: AnyChunk?
	var curMarkdownChunk: MarkdownChunk?
	let errorReporter: ErrorReporter?
	var skippedWhitespaceContent = false
	
	init(errorReporter reporter: ErrorReporter?) {
		errorReporter = reporter
	}
	
	override func enterChunk(_ ctx: Rc2RawParser.ChunkContext) {
		curContext = ctx
		guard let start = ctx.getStart() else { print("chunk with no start??"); return }
		var aChunk: InternalChunk?
		
		// skip whitespace only chunks
		if ctx.getText().trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
			skippedWhitespaceContent = true
			return
		}
		switch start.getType() {
		case Rc2Lexer.MDOWN:
			if curMarkdownChunk == nil {
				curMarkdownChunk = MarkdownChunk(context: ctx)
				aChunk = curMarkdownChunk
			} else {
				// append to curMarkdownChunk
				let mctx = ctx.mdown()!
				curMarkdownChunk?.append(context: mctx)
				return
			}
		case Rc2Lexer.CODE_START:
			aChunk = InternalCodeChunk(context: ctx)
		case Rc2Lexer.EQ_START:
			aChunk = InternalEquationChunk(context: ctx)
		case Rc2Lexer.IC_START:
			aChunk = InlineInternalCodeChunk(context: ctx)
		case Rc2Lexer.IEQ_START:
			aChunk = InlineInternalEquation(context: ctx)
		default:
			parserLog.error("invalid chunk type: \(Rc2Lexer.ruleNames[start.getType() - 1])")
			fatalError()
		}
		guard let rchunk = aChunk else { fatalError("impossible") }
		if rchunk.isInline && curMarkdownChunk == nil {
			parserLog.warning("inline chunk found at top level")
			let err = ListenerError(type: .inlineChunkAtRoot, lineNumber: rchunk.startLine, charIndex: rchunk.startCharIndex, description: nil)
			errorReporter?.errors.append(err)
		}
		let chunk = AnyChunk(rchunk)
		if rchunk.isInline, let mc = curMarkdownChunk {
			mc.append(chunk: chunk)
		} else {
			chunks.append(chunk)
		}
		curChunk = chunk
	}
	
	override func exitChunk(_ ctx: Rc2RawParser.ChunkContext) {
		if skippedWhitespaceContent {
			skippedWhitespaceContent = false
			return
		}
		guard let cc = curChunk else { curContext = nil; return }
		guard !cc.isInline else { curChunk = nil; return }
		if cc.type != .markdown { curMarkdownChunk = nil }
		curContext = nil
		curChunk = nil
	}
}
