//
//  InternalEquationChunk.swift
//  
//
//  Created by Mark Lilback on 12/4/19.
//

import Foundation
import Antlr4

/// a chunk representing a display equation
public class InternalEquationChunk: InternalChunk {
	var endToken: Token?
	
	internal init(context: Rc2RawParser.ChunkContext) {
		guard let start = context.equation()?.EQ_START()?.getSymbol(),
			let eqcode = context.equation()?.EQ_CODE()?.getSymbol(),
			let end = context.equation()?.EQ_END()?.getSymbol()
		else { fatalError() }
		content = context.getText()
		startLine = start.getStartIndex()
		startCharIndex = start.getStartIndex()
		endCharIndex = end.getStopIndex()
		type = .equation
		code = eqcode.getText() ?? ""
	}
	
	public var type: ChunkType
	
	public var content: String
	
	public var startLine: Int
	
	public var startCharIndex: Int
	
	public var endCharIndex: Int
	
	public var code: String
	
	internal func isEqualTo(_ other: Chunk) -> Bool {
		guard let chunk2 = other as? MarkdownChunk else { return false }
		return type == chunk2.type &&
			content == chunk2.content &&
			startLine == chunk2.startLine &&
			startCharIndex == chunk2.startCharIndex &&
			endCharIndex == chunk2.endCharIndex
	}
	
	
}
