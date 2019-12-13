//
//  RParserVisitor.swift
//  
//
//  Created by Mark Lilback on 12/12/19.
//

import Foundation
import Antlr4

extension Token {
	var range: NSRange { return NSRange(location: getStartIndex(), length: getStopIndex() - getStartIndex() + 1) }
}

class RParserVisitor: RBaseVisitor<Void> {

	let source: NSMutableAttributedString
	
	init(string: NSMutableAttributedString) {
		source = string
	}
	
	override open func visitAssignExp(_ ctx: RParser.AssignExpContext) -> Void? {
		self.visitChildren(ctx)
		return nil
	}
	
	override func visitCallFunc(_ ctx: RParser.CallFuncContext) -> Void? {
		guard let funToken = ctx.expr()?.getStart(),
			let funName = funToken.getText(),
			let params = ctx.sublist()
		else { fatalError() }
		let range = funToken.range
		source.addAttribute(RmdParser.SyntaxKey, value: RmdParser.SyntaxElement.keyword, range: range)
		// know child1 is arg1
		print("name = \(funName), args=\(params.getText())")
		self.visit(params)
		return nil
	}

	override func visitSublist(_ ctx: RParser.SublistContext) -> Void? {
		self.visitChildren(ctx)
		return nil
	}
	
	override func visitNumber(_ ctx: RParser.NumberContext) -> Void? {
		if let range = ctx.getStart()?.range {
			source.addAttribute(RmdParser.SyntaxKey, value: RmdParser.SyntaxElement.number, range: range)
		}
		return nil
	}
	
	override func visitIdRule(_ ctx: RParser.IdRuleContext) -> Void? {
		guard let range = ctx.ID()?.getSymbol()?.range else {
			print("ERROR")
			return nil
		}
		source.addAttribute(RmdParser.SyntaxKey, value: RmdParser.SyntaxElement.keyword, range: range)
		return nil
	}
	override func visitComment(_ ctx: RParser.CommentContext) -> Void? {
		if let range = ctx.getStart()?.range {
			source.addAttribute(RmdParser.SyntaxKey, value: RmdParser.SyntaxElement.comment, range: range)
		}
		return nil
	}
}
