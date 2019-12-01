//
//  RmdParser.swift
//
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4

open class RmdParser {
	
	public final func parse(input: String) throws -> ChunkCollection {
		let lexer = Rc2Lexer(ANTLRInputStream(input))
		let parser = try Rc2RawParser(CommonTokenStream(lexer))
		let doc = try parser.document()
		let walker = ParseTreeWalker()
		let listener = Rc2ParserListener()
		try walker.walk(listener, doc)
		return ChunkCollection(listener.chunks)
	}
}
