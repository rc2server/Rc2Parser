//
//  File.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4


class GenericChunk: InternalChunk, Hashable, CustomStringConvertible {
	var endToken: Token?

	func hash(into hasher: inout Hasher) {
		hasher.combine(_token.getType())
		hasher.combine(_token.getStartIndex())
		hasher.combine(_token.getStopIndex())
		hasher.combine(_token.getText() ?? "")
	}
	
	var description: String {
		return "\(typeName): start:\(startCharIndex) end:\(endCharIndex) content:\(content)"
	}
	
	func isEqualTo(_ other: Chunk) -> Bool {
		guard let obj = other as? Self else { return false }
		return self == obj
	}
	
	let typeName: String
	private var _token: Token
	init(ruleName: String, token: Token) {
		_token = token
		typeName = ruleName
	}
	var content: String { return _token.getText() ?? "" }
	var startLine: Int { return _token.getLine() }
	var startCharIndex: Int { return _token.getStartIndex() }
	var endCharIndex: Int { return _token.getStopIndex() }

	static func == (lhs: GenericChunk, rhs: GenericChunk) -> Bool {
		lhs._token.getType() == rhs._token.getType() &&
			lhs._token.getStartIndex() == rhs._token.getStopIndex() &&
			lhs._token.getStopIndex() == rhs._token.getStopIndex()
	}
}
