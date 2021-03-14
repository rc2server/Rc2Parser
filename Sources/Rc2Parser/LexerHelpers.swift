//
//  LexerHelpers.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4

extension ParserRuleContext {
	func childSymbol(at idx: Int) -> Token? {
		guard let kids = children,
			kids.count > idx,
			let node = (kids[idx] as? TerminalNode)
		else { fatalError("invalid child requested") }
		return node.getSymbol()
	}
}

extension Rc2Lexer {
	static let dollar = Character("$").asciiValue!
	static let newline = Character("\n").asciiValue!
	static let backtick = Character("`").asciiValue!
	static let openCurly = Character("{").asciiValue!
	static let space = Character(" ").asciiValue!
	
	func isEQStart() -> Bool {
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
	
	func isCodeStartBackticks() -> Bool {
		do {
			guard let input = _input else { return false }
			guard getCharPositionInLine() <= 3 else { return false } // can only be preceeded by at most 3 spaces
			guard try input.LA(1) == Self.backtick,
				  try input.LA(2) == Self.backtick,
				try input.LA(3) == Self.backtick,
				try input.LA(4) == Self.openCurly
				else { return false }
			// check that preceeding characters, if any, are all spaces (limited to 3 above)
			if getCharPositionInLine() > 0 {
				let rng = (-getCharPositionInLine()) ... -1
				for backIdx in rng {
					if try input.LA(backIdx) != Self.space { return false }
				}
			}
			return true
		} catch {
			return false
		}
	}

	func isCodeEndBackticks() -> Bool {
		do {
			guard let input = _input else { return false }
			guard getCharPositionInLine() <= 3 else { return false } // can only be preceeded by at most 3 spaces
			guard try input.LA(1) == Self.backtick,
				  try input.LA(2) == Self.backtick,
				  try input.LA(3) == Self.backtick
			else { return false }
			// check that preceeding characters, if any, are all spaces (limited to 3 above)
			if getCharPositionInLine() > 0 {
				let rng = (-getCharPositionInLine()) ... -1
				for backIdx in rng {
					if try input.LA(backIdx) != Self.space { return false }
				}
			}
			return true
		} catch {
			return false
		}
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
