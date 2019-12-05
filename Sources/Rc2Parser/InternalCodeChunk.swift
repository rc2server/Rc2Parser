//
//  CodeChunk.swift
//  
//
//  Created by Mark Lilback on 12/3/19.
//

import Foundation
import Antlr4

class InternalCodeChunk: InternalChunk, CodeChunk {
	init(start: Token) {
		self.type = .code
		self.content = start.getText() ?? ""
		self.arguments = ""
		self.code = ""
		self.startLine = start.getLine()
		self.startCharIndex = start.getStartIndex()
		self.endCharIndex = start.getStopIndex()
	}
	
	let type: ChunkType
	public private(set) var arguments: String
	public private(set) var code: String
	var content: String
	var startLine: Int
	var startCharIndex: Int
	private(set) var endCharIndex: Int
	var innerRange: NSRange = NSRange(location: 0, length: 0)
	

	func updateWith(context: Rc2RawParser.CodeContext) {
		guard
			let args = context.CODE_ARG()?.getSymbol(),
			let rawCode = context.CODE()?.getSymbol(),
			let end = context.CODE_END()?.getSymbol()
		else { fatalError() }
		arguments = args.getText()!
		code = rawCode.getText()!
		content = context.getText()
		endCharIndex = end.getStopIndex()
		innerRange = NSRange(location: rawCode.getStartIndex(), length: code.count)
	}

	// this class has no need
	var endToken: Token? {
		get { return nil }
		set {  }
	}
	
	var description: String {
		let nl = code.firstIndex(of: "\n") ?? code.endIndex
		return "\(type): range:\(range) code:\(code[code.startIndex...nl])"
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
			lhs.arguments == rhs.arguments &&
			lhs.code == rhs.code
	}

}
