//
//  GenericChunk.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4


class GenericChunk: InternalChunk, Hashable, CustomStringConvertible {
	var endToken: Token? { didSet {
		guard let end = endToken else { return }
		endCharIndex = end.getStopIndex()
		}
	}

	let typeName: String
	private var _token: Token
	
	init(ruleName: String, token: Token) {
		_token = token
		typeName = ruleName
		endCharIndex = _token.getStopIndex()
	}
	
	var content: String { return _token.getText() ?? "" }
	var startLine: Int { return _token.getLine() }
	var startCharIndex: Int { return _token.getStartIndex() }
	private(set) var endCharIndex: Int

	var description: String {
		return "\(typeName): start:\(startCharIndex) end:\(endCharIndex) content:\(content)"
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(_token.getType())
		hasher.combine(_token.getStartIndex())
		hasher.combine(_token.getStopIndex())
		hasher.combine(_token.getText() ?? "")
	}
	
	func isEqualTo(_ other: Chunk) -> Bool {
		guard let obj = other as? Self else { return false }
		return self == obj
	}
	
	static func == (lhs: GenericChunk, rhs: GenericChunk) -> Bool {
		lhs._token.getType() == rhs._token.getType() &&
			lhs._token.getStartIndex() == rhs._token.getStopIndex() &&
			lhs._token.getStopIndex() == rhs._token.getStopIndex()
	}
}
