//
//  RmdParser.swift
//
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4
import Logging

internal let parserLog = Logger(label: "io.rc2.rc2parser")

/// the key the highlighter's will use to mark attributes
public let SyntaxKey = NSAttributedString.Key("Rc2Style")

/// the types of styles that will be tagged under StyleKey
public enum SyntaxElement: String, CaseIterable {
	/// a quoted string (single or double)
	case string
	/// a comment starting with #
	case comment
	/// the name oi a function
	case functonName
	/// an operator or reserved work (if, else, etc.)
	case symbol
	/// a numeric value, including integer, real, and complex numbers
	case number
}

open class RmdParser {
	
	public init() {}

	static func timeStr(_ val: Double) -> String {
		return String(format: "%.5f", val)
	}
	
	/// parses a string of RMarkdown into chunks
	public final func parse(input: String) throws -> ChunkCollection {
		let lstart = CFAbsoluteTimeGetCurrent()
		let lexer = Rc2Lexer(ANTLRInputStream(input))
		let tokens = CommonTokenStream(lexer)
		print("lexer took \(Self.timeStr(CFAbsoluteTimeGetCurrent() - lstart))")
		let filter = try RFilter(tokens)
		filter.setErrorHandler(FilterErrorStrategy())
		try filter.stream()
		try tokens.reset()
		let pstart = CFAbsoluteTimeGetCurrent()
		let parser = try Rc2RawParser(tokens)
		let doc = try parser.document()
		print("parse took \(Self.timeStr(CFAbsoluteTimeGetCurrent() - pstart))")
		let wstart = CFAbsoluteTimeGetCurrent()
		let walker = ParseTreeWalker()
		let errors = ErrorReporter()
		let listener = Rc2ParserListener(errorReporter: errors)
		try walker.walk(listener, doc)
		print("walker took \(Self.timeStr(CFAbsoluteTimeGetCurrent() - wstart))")
		if errors.errors.count > 0 {
			throw errors.errors[0]
		}
		parserLog.info("parsed \(listener.chunks.count) chunks")
		return ChunkCollection(listener.chunks)
	}

	public final func highlight(chunk: AnyChunk, contents: NSMutableAttributedString, range: NSRange) throws {
		guard chunk.type == .code else { fatalError("can't highlight non R chunks") }
		let text = contents.attributedSubstring(from: range).string
		let lexer = RLexer(ANTLRInputStream(text))
		let allTokens = try lexer.getAllTokens()
		let vocab = lexer.getVocabulary()
		for idx in 0..<allTokens.count {
			let atoken = allTokens[idx]
			print("\(vocab.getDisplayName(atoken.getType())) = \(atoken.getText() ?? "-")")
		}
		try lexer.reset()
		let tokens = CommonTokenStream(lexer)
		let filter = try RFilter(tokens)
		filter.setErrorHandler(FilterErrorStrategy())
		try filter.stream()
		try tokens.reset()
		let parser =  try RParser(tokens)
		let tree = try parser.prog()
		let visitor = RHighlightVisitor(string: contents, range: range, parser: parser)
		visitor.visit(tree)
	}

	public final func oldHighlight(content: NSMutableAttributedString) throws {
		let lexer = RLexer(ANTLRInputStream(content.string))
		let tokens = CommonTokenStream(lexer)
		let filter = try RFilter(tokens)
		filter.setErrorHandler(FilterErrorStrategy())
		try filter.stream()
		try tokens.reset()
		let parser =  try RParser(tokens)
		let tree = try parser.prog()
		let visitor = RHighlightVisitor(string: content, range: NSRange(location: 0, length: content.length), parser: parser)
		visitor.visit(tree)
	}
}

// used to not output any message about mismatched input, as that always happens for inline equations and code
final class FilterErrorStrategy: DefaultErrorStrategy {
	override func reportInputMismatch(_ recognizer: Parser, _ e: InputMismatchException) {
		let tokStr = getSymbolText(e.getOffendingToken())
		switch tokStr {
			case "$", "$$", "```\n": return
			case "\n":
				// if a newline preceeded by a backtick, then is the end of inline code and ok
				if e.getCtx()?.getText() == "`" { return }
			default: break
		}
		super.reportInputMismatch(recognizer, e)
	}
}
