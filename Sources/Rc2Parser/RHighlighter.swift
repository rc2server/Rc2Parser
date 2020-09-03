//
//  RHighlighter.swift
//  Parsing
//
//  Created by Mark Lilback on 3/16/20.
//  Copyright © 2020 Rc2. All rights reserved.
//

import Foundation
import Antlr4


public class RHighlighter {
	private let range: NSRange
	private let timeout: TimeInterval?
	private let src: NSMutableAttributedString
	private var lexer: RLexer?
	private var tokens: CommonTokenStream?
	private var timeoutListener: RParserTimeoutListener?
	
	public init(_ text: NSMutableAttributedString, range: NSRange, timeout: TimeInterval? = -1.0) throws {
		src = text
		self.range = range
		self.timeout = timeout
	}
	
	public func start() throws {
		guard let strRange = Range(range, in: src.string) else { fatalError() }
		let contentStr = String(src.string[strRange])
		lexer = RLexer(ANTLRInputStream(contentStr))
		tokens = CommonTokenStream(lexer!)
		// filter newlines
		let filter = try Rc2RFilter(tokens!, logLevel: .info)
		filter.setErrorHandler(FilterErrorStrategy())
		try filter.stream()
		try tokens!.reset()
		
		let parser =  try RParser(tokens!)
		if timeout! > 0 {
			timeoutListener = RParserTimeoutListener(timeout: timeout!)
			parser.addParseListener(timeoutListener!)
			
		}
		let tree = try parser.prog()
		let visitor = RHighlightVisitor(string: src, range: range, parser: parser)
		visitor.visit(tree)
	}
	
	public func cancel() {
		timeoutListener?.canceled = true
	}
}

