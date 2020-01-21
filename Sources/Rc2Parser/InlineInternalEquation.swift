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
	
	internal init(content: String, line: Int, start: Int, end: Int) {
		self.type = .inlineEquation
		self.content = content
		self.startLine = line
		self.startCharIndex = start
		self.endCharIndex = end
		// need to strip start and end dollar signs
		innerRange = NSRange(location: 1, length: end - start - 1)
		code = ((content as NSString).substring(with: innerRange)) as String
	}
	
	
	public var type: ChunkType
	
	public var content: String
	
	public var startLine: Int
	
	public var startCharIndex: Int
	
	public var endCharIndex: Int
	
	public var code: String

	public var innerRange: NSRange

	public var isInline: Bool { return true }
	
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

