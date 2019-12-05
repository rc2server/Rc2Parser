//
//  InlineInternalEquation.swift
//  
//
//  Created by Mark Lilback on 12/5/19.
//

import Foundation
import Antlr4


/// a chunk representing a display equation
public class InlineInternalEquation: InternalChunk, InlineChunk, EquationChunk {
	var endToken: Token?
	
	internal init(context: Rc2RawParser.ChunkContext) {
		
		guard let icontext = context.inlineEQ(),
			let start = icontext.IEQ_START()?.getSymbol(),
			let eqcode = icontext.IEQ_CODE()?.getSymbol(),
			let end = icontext.IEQ_END()?.getSymbol()
		else { fatalError() }
		content = icontext.getText()
		startLine = start.getStartIndex()
		startCharIndex = start.getStartIndex()
		endCharIndex = end.getStopIndex()
		type = .inlineEquation
		code = eqcode.getText() ?? ""
		innerRange = NSRange(location: eqcode.getStartIndex(), length: eqcode.getStopIndex() - eqcode.getStartIndex() + 1)
	}
	
	public var type: ChunkType
	
	public var content: String
	
	public var startLine: Int
	
	public var startCharIndex: Int
	
	public var endCharIndex: Int
	
	public var code: String

	public var innerRange: NSRange

	internal func isEqualTo(_ other: Chunk) -> Bool {
		guard let chunk2 = other as? InlineInternalEquation else { return false }
		return type == chunk2.type &&
			code == chunk2.code &&
			content == chunk2.content &&
			startLine == chunk2.startLine &&
			startCharIndex == chunk2.startCharIndex &&
			endCharIndex == chunk2.endCharIndex
	}
	
	
}

