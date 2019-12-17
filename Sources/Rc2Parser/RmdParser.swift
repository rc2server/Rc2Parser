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
	case none
	case string
	case comment
	case keyword
	case symbol
	case number
}

open class RmdParser {
	
	public init() {}
	
	/// parses a string of RMarkdown into chunks
	public final func parse(input: String) throws -> ChunkCollection {
		let lexer = Rc2Lexer(ANTLRInputStream(input))
		let tokens = CommonTokenStream(lexer)
		let filter = try RFilter(tokens)
		try filter.stream()
		try tokens.reset()
		let parser = try Rc2RawParser(tokens)
		let doc = try parser.document()
		let walker = ParseTreeWalker()
		let errors = ErrorReporter()
		let listener = Rc2ParserListener(errorReporter: errors)
		try walker.walk(listener, doc)
		if errors.errors.count > 0 {
			throw errors.errors[0]
		}
		return ChunkCollection(listener.chunks)
	}

	public final func highlight(content: NSMutableAttributedString) throws {
		let lexer = RLexer(ANTLRInputStream(content.string))
		let tokens = CommonTokenStream(lexer)
		let filter = try RFilter(tokens)
		try filter.stream()
		try tokens.reset()
		let parser =  try RParser(tokens)
		let tree = try parser.prog()
		let visitor = RParserVisitor(string: content, parser: parser)
		visitor.visit(tree)
	}
}
