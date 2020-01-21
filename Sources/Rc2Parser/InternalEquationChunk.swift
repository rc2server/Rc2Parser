//
//  InternalEquationChunk.swift
//  
//
//  Created by Mark Lilback on 12/4/19.
//

import Foundation
import Antlr4

/// a chunk representing a display equation
public class InternalEquationChunk: InternalChunk, EquationChunk {
	
	internal init(context: Rc2RawParser.ChunkContext) {
		guard let icontext = context.equation(),
			let start = icontext.EQ_START()?.getSymbol(),
			let eqcode = icontext.EQ_CODE()?.getSymbol(),
			let end = icontext.EQ_END()?.getSymbol()
		else { fatalError() }
		content = context.getText()
		startLine = start.getStartIndex()
		startCharIndex = start.getStartIndex()
		endCharIndex = end.getStopIndex()
		type = .equation
		code = eqcode.getText() ?? ""
		innerRange = NSRange(location: eqcode.getStartIndex(), length: eqcode.getStopIndex() - eqcode.getStartIndex() + 1)
	}
	
	internal init(content: String, startToken: Token, codeToken: Token, endToken: Token) {
		guard startToken.getType() == Rc2Lexer.EQ_START, codeToken.getType() == Rc2Lexer.EQ_CODE, endToken.getType() == Rc2Lexer.EQ_END
			else { fatalError("invalid token") }
		
		self.content = content
		startLine = startToken.getLine()
		startCharIndex = startToken.getStartIndex()
		endCharIndex = endToken.getStopIndex()
		type = .equation
		code = codeToken.getText() ?? ""
		innerRange = NSRange(location: codeToken.getStartIndex(), length: codeToken.getStopIndex() - codeToken.getStartIndex() + 1)
	}

	
	public var type: ChunkType
	
	public var content: String
	
	public var startLine: Int
	
	public var startCharIndex: Int
	
	public var endCharIndex: Int
	
	public var code: String
	
	public var innerRange: NSRange
	
	internal func isEqualTo(_ other: Chunk) -> Bool {
		guard let chunk2 = other as? InternalEquationChunk else { return false }
		return type == chunk2.type &&
			code == chunk2.code &&
			content == chunk2.content &&
			startLine == chunk2.startLine &&
			startCharIndex == chunk2.startCharIndex &&
			endCharIndex == chunk2.endCharIndex
	}
	
	
}
