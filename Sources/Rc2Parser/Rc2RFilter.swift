//
//  Rc2RFilter.swift
//  
//
//  Created by Mark Lilback on 2/4/20.
//

import Foundation
import Antlr4
import Logging

class Rc2RFilter: RFilter {
	static let errorListener = FilterErrorListener()
	var logLevel: Logger.Level = .warning
	
	convenience init(_ input: TokenStream, logLevel: Logger.Level = .warning) throws {
		try self.init(input)
		self.logLevel = logLevel
	}

	override init(_ input: TokenStream) throws {
		try super.init(input)
		removeErrorListeners()
		addErrorListener(Self.errorListener)
		setErrorHandler(FilterErrorStrategy())

	}
}

// default used ConsoleErrorListener, which only implemented syntaxError() and printed to console
final class FilterErrorListener: BaseErrorListener {
	override public func syntaxError<T>(_ recognizer: Recognizer<T>,
										_ offendingSymbol: AnyObject?,
										_ line: Int,
										_ charPositionInLine: Int,
										_ msg: String,
										_ e: AnyObject?
	) {
		if Parser.ConsoleError {
			parserLog.warning("line \(line):\(charPositionInLine) \(msg)")
		}
	}
}

// used to not output any message about mismatched input, as that always happens for inline equations and code
final class FilterErrorStrategy: DefaultErrorStrategy {
	override func reportInputMismatch(_ recognizer: Parser, _ e: InputMismatchException) {
		let tokStr = getSymbolText(e.getOffendingToken())
		switch tokStr {
		case "$", "$$", "```\n": return
		case "\n":
			// if a newline preceeded by a backtick, then is the end of inline code and ok
			if e.getCtx()?.getText() == "`" { return }
		default: break
		}
		super.reportInputMismatch(recognizer, e)
	}
}

