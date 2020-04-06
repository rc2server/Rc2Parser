//
//  RParserTimeoutListener.swift
//  Rc2Parser
//
//  Created by Mark Lilback on 3/15/20.
//  Copyright © 2020 Rc2. All rights reserved.
//

import Foundation
import Antlr4

class RParserTimeoutListener: RBaseListener {
	let timeout: TimeInterval
	let startTime: TimeInterval
	var canceled = false
	
	init(timeout: TimeInterval) {
		self.timeout = timeout
		self.startTime = Date.timeIntervalSinceReferenceDate
	}
	
	// check for elapsed timeout every time a rule is entered
	override func enterEveryRule(_ ctx: ParserRuleContext) throws {
		if canceled {
			throw RParserError.canceled
		}
		if Date.timeIntervalSinceReferenceDate - startTime > timeout {
			throw RParserError.timeout
		}
	}
}
