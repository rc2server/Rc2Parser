//
//  RParserListener.swift
//  
//
//  Created by Mark Lilback on 12/11/19.
//

import Foundation
import Antlr4

internal class RParserListener: RBaseListener {
	var content: NSMutableAttributedString
	var inFunctionCall = false
	var funNameStack = [String]()
	
	init(content: NSMutableAttributedString) {
		self.content = content
	}
	
	override func enterIdRule(_ ctx: RParser.IdRuleContext) {
		if let funName = (ctx.getParent() as? RParser.CallFuncContext)?.getStart()?.getText(),
			let exprName = funNameStack.last,
			funName == exprName
		{ return }

		if ctx.getParent() is RParser.SublistContext { return }
		print("id \(ctx.getText())")
	}
	
	override func enterSublist(_ ctx: RParser.SublistContext) {
		guard !inFunctionCall else { return }
		print("slist \(ctx.getText())")
	}
	
	override func enterNumber(_ ctx: RParser.NumberContext) {
		print("num \(ctx.getText())")
	}
	
	override func enterStringRule(_ ctx: RParser.StringRuleContext) {
		print("str \(ctx.getText())")
	}
	
	override func enterAssignOp(_ ctx: RParser.AssignOpContext) {
		print("assignOp \(ctx.getText())")
	}

	override func enterCallFunc(_ ctx: RParser.CallFuncContext) {
		inFunctionCall = true
		let funcName = ctx.getStart()!.getText()!
		funNameStack.append(funcName)
		print("call \(funcName) with (\(ctx.sublist()?.getText() ?? ""))")
	}
	
	override func exitCallFunc(_ ctx: RParser.CallFuncContext) {
		let last = funNameStack.removeLast()
		inFunctionCall = false
		let funcName = ctx.getStart()!.getText()!
		precondition(last == funcName)
//		skipIds.remove(funcName)
	}
}
