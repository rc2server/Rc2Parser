//
//  InternalInlineCodeChunk.swift
//  
//
//  Created by Mark Lilback on 12/3/19.
//

import Foundation
import Antlr4

class InlineInternalCodeChunk: InternalChunk, InlineChunk, CodeChunk {
	init(context: Rc2RawParser.ChunkContext) {
		guard let ctx = context.inlineCode(),
			let start = ctx.IC_START()?.getSymbol(),
			let rawCode = ctx.IC_CODE()?.getSymbol(),
			let end = ctx.IC_END()?.getSymbol()
		else { fatalError() }
		type = .inlineCode
		content = ctx.getText()
		code = rawCode.getText() ?? ""
		startLine = start.getLine()
		startCharIndex = start.getStartIndex()
		endCharIndex = end.getStopIndex()
		innerRange = NSRange(location: rawCode.getStartIndex(), length: rawCode.getStopIndex() - rawCode.getStartIndex() + 1)
	}
	
	internal init(content: String, startToken: Token, codeToken: Token, endToken: Token) {
		guard startToken.getType() == Rc2Lexer.IC_START, codeToken.getType() == Rc2Lexer.IC_CODE, endToken.getType() == Rc2Lexer.IC_END
			else { fatalError("invalid token") }
		
		type = .inlineCode
		self.content = content
		code = codeToken.getText() ?? ""
		startLine = startToken.getLine()
		startCharIndex = startToken.getStartIndex()
		endCharIndex = endToken.getStopIndex()
		innerRange = NSRange(location: codeToken.getStartIndex(), length: codeToken.getStopIndex() - codeToken.getStartIndex() + 1)
	}

	// FIXME: why is this not being called?
	public var description: String {
		return "\(type): range:\(range) content:\(content)"
	}

	public var type: ChunkType
	
	public var content: String
	
	public var startLine: Int
	
	public var startCharIndex: Int
	
	public var endCharIndex: Int
	
	public var innerRange: NSRange
	
	public private(set) var parseInProgress: Bool = false
	
	public private(set) var readyForAutoComplete: Bool = false
	
	
	public var isInline: Bool { return true }
	
	var arguments: String = ""
	var code: String
	
	internal func isEqualTo(_ other: Chunk) -> Bool {
		guard let chunk2 = other as? InlineInternalCodeChunk else { return false }
		return type == chunk2.type &&
			code == chunk2.code &&
			content == chunk2.content &&
			startLine == chunk2.startLine &&
			startCharIndex == chunk2.startCharIndex &&
			endCharIndex == chunk2.endCharIndex
	}
}
