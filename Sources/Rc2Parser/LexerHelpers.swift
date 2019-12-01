//
//  File.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4

extension Token {
	var typeName: String { return Rc2Lexer.ruleNames[(getType()) - 1] }
}

extension Rc2Lexer {
	static let dollar = Character("$").asciiValue!
	static let newline = Character("\n").asciiValue!
	
	func isEQStart() ->Bool {
		guard getCharPositionInLine() == 0 else { return false }
		// _inputLA(-1|1) is the character being evaluated
		guard let back1 = try? _input!.LA(-1),
			let cur =  try? _input!.LA(1),
			let next1 = try? _input!.LA(2),
			let next2 = try? _input!.LA(3)
			else { return false }
		let valid = cur == Self.dollar &&
			next1 == Self.dollar &&
			next2 != Self.dollar &&
			back1 != Self.dollar
		return valid
	}
	
	func isInlineEqStart() -> Bool {
		// _inputLA(-1) is the character being evaluated
		guard let prev = try? _input!.LA(-2), let next = try? _input!.LA(1)
			else { return false }
		if prev == Self.dollar || next == Self.dollar { return false }
		return true
	}
	func isNotNextChar(_ char: String) -> Bool {
		return testForChar(char, at: -1)
	}
	
	func isNextChar(_ char: String, negate: Bool = false) -> Bool {
		return testForChar(char, at: 1)
	}
	func isPreviousChar(_ char: String) -> Bool {
		return testForChar(char, at: -1)
	}
	
	func testForChar(_ char: String, at index: Int) -> Bool {
		precondition(char.count == 1)
		guard let rawVal = try? _input!.LA(index), let nlVal = Character(char).asciiValue
			else { return false }
		let nextVal = rawVal
		let newline = Int(nlVal)
		return nextVal == newline
	}
}
