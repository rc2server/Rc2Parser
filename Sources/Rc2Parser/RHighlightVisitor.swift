//
//  RHighlightVisitor.swift
//  
//
//  Created by Mark Lilback on 12/12/19.
//

import Foundation
import Antlr4

extension Token {
	var range: NSRange { return NSRange(location: getStartIndex(), length: getStopIndex() - getStartIndex() + 1) }
}

class RHighlightVisitor: RBaseVisitor<Void> {

	let rKeywords = Set<String>(["if", "else", "repeat", "while", "for", "break", "in", "next", "function", "TRUE", "FALSE", "NA", "NaN", "Inf", "NULL"])
	
	let source: NSMutableAttributedString
	let parser: RParser
	let globalRange: NSRange
	
	init(string: NSMutableAttributedString, range: NSRange, parser: RParser) {
		source = string
		self.parser = parser
		self.globalRange = range
	}
	
	override open func visitAssignOp(_ ctx: RParser.AssignOpContext) -> Void? {
		self.visitChildren(ctx)
		if let tok = ctx.getChild(0)?.getPayload() as? Token {
			let rng = NSRange(location: globalRange.location + tok.range.location, length: tok.range.length)
			source.addAttribute(SyntaxKey, value: SyntaxElement.symbol, range: rng)
		}
		return nil
	}
	
//	override func visitAssignExp(_ ctx: RParser.AssignExpContext) -> Void? {
//		self.visitChildren(ctx)
//		print("ass: \(ctx.getText())")
//		return nil
//	}
	
	override func visitAssignment(_ ctx: RParser.AssignmentContext) -> Void? {
		visitChildren(ctx)
		// ctx.getStart() if an ID, that is the variable the assignment is beeing made to
		return nil
	}
	
	override func visitCallFunc(_ ctx: RParser.CallFuncContext) -> Void? {
		guard let funToken = ctx.expr()?.getStart(),
			let params = ctx.sublist()
		else { fatalError() }
		let range = funToken.range
		
		if rKeywords.contains(funToken.getText()!.lowercased()) {
			let rng = NSRange(location: globalRange.location + range.location, length: range.length)
			source.addAttribute(SyntaxKey, value: SyntaxElement.symbol, range: rng)
		} else {
			let rng = NSRange(location: globalRange.location + range.location, length: range.length)
			source.addAttribute(SyntaxKey, value: SyntaxElement.functionName, range: rng)
		}
		// know child1 is arg1
//		print("name = \(funName), args=\(params.getText())")
		self.visit(params)
		return nil
	}

	// I really don't like that this is never called. callFunc captures all defineFunc instances
//	override func visitDefineFunc(_ ctx: RParser.DefineFuncContext) -> Void? {
//		print("def func \(ctx.getText())")
//		return nil
//	}
	
	override func visitNumber(_ ctx: RParser.NumberContext) -> Void? {
		if let range = ctx.getStart()?.range {
			let rng = NSRange(location: globalRange.location + range.location, length: range.length)
			source.addAttribute(SyntaxKey, value: SyntaxElement.number, range: rng)
		}
		return nil
	}

	override func visitStringRule(_ ctx: RParser.StringRuleContext) -> Void? {
		if let range = ctx.getStart()?.range {
			let rng = NSRange(location: globalRange.location + range.location, length: range.length)
			source.addAttribute(SyntaxKey, value: SyntaxElement.string, range: rng)
		}
		return nil
	}
	
//	override func visitIdRule(_ ctx: RParser.IdRuleContext) -> Void? {
//		guard let range = ctx.ID()?.getSymbol()?.range else {
//			print("ERROR")
//			return nil
//		}
//		source.addAttribute(RmdParser.SyntaxKey, value: RmdParser.SyntaxElement.keyword, range: range)
//		return nil
//	}
	
	override func visitComment(_ ctx: RParser.CommentContext) -> Void? {
		if let range = ctx.getStart()?.range {
			let rng = NSRange(location: globalRange.location + range.location, length: range.length)
			source.addAttribute(SyntaxKey, value: SyntaxElement.comment, range: rng)
		}
		return nil
	}
}
