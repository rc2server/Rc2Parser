//
//  InternalInlineCodeChunk.swift
//  
//
//  Created by Mark Lilback on 12/3/19.
//

import Foundation
import Antlr4

class InlineInternalCodeChunk: InternalChunk, InlineChunk, CodeChunk {
	init(start: Token) {
		type = .inlineCode
		content = start.getText() ?? ""
		code = ""
		startLine = start.getLine()
		startCharIndex = start.getStartIndex()
		endCharIndex = start.getStopIndex()
		innerRange = NSRange(location: startCharIndex, length: endCharIndex - startCharIndex + 1 )
	}

	func update(context: Rc2RawParser.InlineCodeContext) {
		guard let start = context.IC_START()?.getSymbol(),
		let rawCode = context.IC_CODE()?.getSymbol(),
		let end = context.IC_END()?.getSymbol(),
		start.getType() == Rc2Lexer.IC_START,
		rawCode.getType() == Rc2Lexer.IC_CODE,
		end.getType() == Rc2Lexer.IC_END
		else { fatalError() }
		content = context.getText()
		code = rawCode.getText()!
		endCharIndex = end.getStopIndex()
		innerRange = NSRange(location: rawCode.getStartIndex(), length: code.count)
	}
	
	// FIXME: why is this not being called?
	public var description: String {
		return "\(type): range:\(range) content:\(content)"
	}

	// this class has no need for this property
	var endToken: Token? { get { return nil } set {  } }

	public var type: ChunkType
	
	public var content: String
	
	public var startLine: Int
	
	public var startCharIndex: Int
	
	public var endCharIndex: Int
	
	public var innerRange: NSRange { willSet {
		print("will set from \(innerRange) to \(newValue)")
		}}
	
	var arguments: String = ""
	var code: String
	
	internal func isEqualTo(_ other: Chunk) -> Bool {
		guard let chunk2 = other as? MarkdownChunk else { return false }
		return type == chunk2.type &&
			content == chunk2.content &&
			startLine == chunk2.startLine &&
			startCharIndex == chunk2.startCharIndex &&
			endCharIndex == chunk2.endCharIndex
	}
}
