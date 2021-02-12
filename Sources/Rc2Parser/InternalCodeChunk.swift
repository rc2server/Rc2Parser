//
//  CodeChunk.swift
//  
//
//  Created by Mark Lilback on 12/3/19.
//

import Foundation
import Antlr4

class InternalCodeChunk: InternalChunk, CodeChunk {
	init(context: Rc2RawParser.ChunkContext) {
		guard let ctx = context.code(),
			let start = ctx.CODE_START()?.getSymbol(),
			let args = ctx.CODE_ARG()?.getSymbol(),
			let rawCode = ctx.CODE()?.getSymbol(),
			let end = ctx.CODE_END()?.getSymbol()
			else { fatalError() }
		type = .code
		content = ctx.getText()
		arguments = args.getText() ?? ""
		//need to handle arguments here.
		code = rawCode.getText() ?? ""
		startLine = start.getLine()
		startCharIndex = start.getStartIndex()
		endCharIndex = end.getStopIndex()
		innerRange = NSRange(location: rawCode.getStartIndex(), length: rawCode.getStopIndex() - rawCode.getStartIndex() + 1)
	}
	
	
	internal init(content: String, startToken: Token, argToken: Token, codeToken: Token, endToken: Token) {
		guard startToken.getType() == Rc2Lexer.CODE_START, codeToken.getType() == Rc2Lexer.CODE,
			endToken.getType() == Rc2Lexer.CODE_END, let argText = argToken.getText()
			else { fatalError("invalid token") }
		
		type = .code
		self.content = content
		code = codeToken.getText() ?? ""
		startLine = startToken.getLine()
		startCharIndex = startToken.getStartIndex()
		endCharIndex = endToken.getStopIndex()
		innerRange = NSRange(location: codeToken.getStartIndex(), length: codeToken.getStopIndex() - codeToken.getStartIndex() + 1)
		arguments = argText
	}

	let type: ChunkType
	public private(set) var arguments: String
	public private(set) var code: String
	var content: String
	var startLine: Int
	var startCharIndex: Int
	private(set) var endCharIndex: Int
	var innerRange: NSRange
	
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
