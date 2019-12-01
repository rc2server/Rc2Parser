//
//  Rc2ParserListener.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4

class Rc2ParserListener: Rc2RawParserBaseListener {
	var chunks: [AnyChunk] = [] as! [AnyChunk]
	var curContext: Rc2RawParser.ChunkContext?
	var curChunk: AnyChunk?
	
	override func enterChunk(_ ctx: Rc2RawParser.ChunkContext) {
		curContext = ctx
		guard let start = ctx.getStart() else { print("chunk with no start??"); return }
		let name = Rc2Lexer.ruleNames[start.getType() - 1]
		var aChunk: InternalChunk?
		
		switch start.getType() {
		case Rc2Lexer.MDOWN:
			aChunk = MarkdownChunk(context: ctx)
		case Rc2Lexer.CODE_START:
			aChunk = GenericChunk(ruleName: "Code", token: start)
		case Rc2Lexer.EQ_START:
			aChunk = GenericChunk(ruleName: "Equation", token: start)
		case Rc2Lexer.IC_START:
			aChunk = GenericChunk(ruleName: "InlineCode", token: start)
		case Rc2Lexer.IEQ_START:
			aChunk = GenericChunk(ruleName: "InlineEquation", token: start)
		default:
			aChunk = GenericChunk(ruleName: name, token: start)
		}
		guard let rchunk = aChunk else { fatalError("impossible") }
		let chunk = AnyChunk(rchunk)
		chunks.append(chunk)
		curChunk = chunk
	}
	override func exitChunk(_ ctx: Rc2RawParser.ChunkContext) {
		curChunk?.endToken = ctx.getStop()
		curContext = nil
		curChunk = nil
	}
}
