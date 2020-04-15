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
/// the key that encloses each chunk. Value is ChunkType
public let ChunkKey = NSAttributedString.Key("Rc2ChunkType")

/// the types of styles that will be tagged under StyleKey
public enum SyntaxElement: String, CaseIterable {
	/// a quoted string (single or double)
	case string
	/// a comment starting with #
	case comment
	/// the name oi a function
	case functionName
	/// an operator or reserved work (if, else, etc.)
	case symbol
	/// a numeric value, including integer, real, and complex numbers
	case number
}

public enum RParserError: Error {
	case timeout
	case canceled
	case unknown
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
		parserLog.debug("lexer took \(Self.timeStr(CFAbsoluteTimeGetCurrent() - lstart))")
		let filter = try Rc2RFilter(tokens, logLevel: .info)
		try filter.stream()
		try tokens.reset()
		let pstart = CFAbsoluteTimeGetCurrent()
		let parser = try Rc2RawParser(tokens)
		let doc = try parser.document()
		parserLog.debug("parse took \(Self.timeStr(CFAbsoluteTimeGetCurrent() - pstart))")
		let wstart = CFAbsoluteTimeGetCurrent()
		let walker = ParseTreeWalker()
		let errors = ErrorReporter()
		let listener = Rc2ParserListener(errorReporter: errors)
		try walker.walk(listener, doc)
		parserLog.debug("walker took \(Self.timeStr(CFAbsoluteTimeGetCurrent() - wstart))")
		if errors.errors.count > 0 {
			throw errors.errors[0]
		}
		parserLog.info("parsed \(listener.chunks.count) chunks")
		return ChunkCollection(listener.chunks)
	}
	
	/// Highlights R code
	/// - Parameters:
	///   - contents: the code to highlight
	///   - range: the range of contents to highlight
	///   - timeout: A timeout value that when elapsed, the parser will stop with a timeout error. If <= 0, no timer will be useed
	@available(*, deprecated, message: "should switch to using RHighlighter class")
	final func highlightR(contents: NSMutableAttributedString, range: NSRange, timeout: TimeInterval = -1.0) throws {
		let text = contents.attributedSubstring(from: range).string
		let lexer = RLexer(ANTLRInputStream(text))
//		let allTokens = try lexer.getAllTokens()
//		let vocab = lexer.getVocabulary()
//		for idx in 0..<allTokens.count {
//			let atoken = allTokens[idx]
//			print("\(vocab.getDisplayName(atoken.getType())) = \(atoken.getText() ?? "-")")
//		}
//		try lexer.reset()
		let tokens = CommonTokenStream(lexer)
		let filter = try Rc2RFilter(tokens, logLevel: .info)
		filter.setErrorHandler(FilterErrorStrategy())
		try filter.stream()
		try tokens.reset()
		let parser =  try RParser(tokens)
		if timeout > 0 {
			parser.addParseListener(RParserTimeoutListener(timeout: timeout))
		}
		let tree = try parser.prog()
		let visitor = RHighlightVisitor(string: contents, range: range, parser: parser)
		visitor.visit(tree)
	}
}
