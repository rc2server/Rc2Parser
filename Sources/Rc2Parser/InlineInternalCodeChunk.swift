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
	
	// FIXME: why is this not being called?
	public var description: String {
		return "\(type): range:\(range) content:\(content)"
	}

	// this class has no need for this property
	var endToken: Token?

	public var type: ChunkType
	
	public var content: String
	
	public var startLine: Int
	
	public var startCharIndex: Int
	
	public var endCharIndex: Int
	
	public var innerRange: NSRange
	
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
