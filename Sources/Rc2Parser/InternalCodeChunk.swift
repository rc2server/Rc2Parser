//
//  CodeChunk.swift
//  
//
//  Created by Mark Lilback on 12/3/19.
//

import Foundation
import Antlr4

class InternalCodeChunk: ChunkPrivate, CodeChunk {
	init(type: ChunkType, token: Token) {
		self.type = type
		self.content = token.getText() ?? ""
		self.arguments = ""
		self.code = ""
		self.startLine = token.getLine()
		self.startCharIndex = token.getStartIndex()
		self.endCharIndex = token.getStopIndex()
	}
	
	let type: ChunkType
	public private(set) var arguments: String
	public private(set) var code: String
	var content: String
	var startLine: Int
	var startCharIndex: Int
	private(set) var endCharIndex: Int
	var innerRange: NSRange = NSRange(location: 0, length: 0)
	

	func updateWith(start: Token, args: Token, code rawCode: Token, end: Token) {
		arguments = args.getText()!
		code = rawCode.getText()!
		content = start.getText()! + args.getText()! + rawCode.getText()! + end.getText()!
		endCharIndex = end.getStopIndex()
		innerRange = NSRange(location: rawCode.getStartIndex(), length: rawCode.getStopIndex() - rawCode.getStartIndex() + 1)
	}

	// this class has no need
	var endToken: Token? {
		get { return nil }
		set {  }
	}
	
	var description: String {
		return "\(type.rawValue): start:\(startCharIndex) end:\(endCharIndex) content:\(content)"
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(type)
		hasher.combine(startCharIndex)
		hasher.combine(endCharIndex)
		hasher.combine(content)
	}
	
	func isEqualTo(_ other: Chunk) -> Bool {
		guard let obj = other as? Self else { return false }
		return self == obj
	}
	
	static func == (lhs: InternalCodeChunk, rhs: InternalCodeChunk) -> Bool {
		lhs.type == rhs.type &&
			lhs.startCharIndex == rhs.startCharIndex &&
			lhs.endCharIndex == rhs.endCharIndex &&
			lhs.code == rhs.code
	}

}
