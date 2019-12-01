//
//  Rc2ParserListener.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4
import Logging

enum ListenerErrorType {
	case inlineChunkAtRoot
}

struct ListenerError: Error {
	var type: ListenerErrorType
	var lineNumber: Int
	var charIndex: Int
	var description: String?
}

class ErrorReporter {
	var errors = [ListenerError]()
}

class Rc2ParserListener: Rc2RawParserBaseListener {
	var chunks: [AnyChunk] = [] as! [AnyChunk]
	var curContext: Rc2RawParser.ChunkContext?
	var curChunk: AnyChunk?
	var curMarkdownChunk: MarkdownChunk?
	let errorReporter: ErrorReporter?
	
	init(errorReporter reporter: ErrorReporter?) {
		errorReporter = reporter
	}
	
	override func enterChunk(_ ctx: Rc2RawParser.ChunkContext) {
		curContext = ctx
		guard let start = ctx.getStart() else { print("chunk with no start??"); return }
		var aChunk: InternalChunk?
		
		switch start.getType() {
		case Rc2Lexer.MDOWN:
			curMarkdownChunk = MarkdownChunk(context: ctx)
			aChunk = curMarkdownChunk
		case Rc2Lexer.CODE_START:
			aChunk = GenericChunk(type: .code, token: start)
		case Rc2Lexer.EQ_START:
			aChunk = GenericChunk(type: .equation, token: start)
		case Rc2Lexer.IC_START:
			aChunk = GenericChunk(type: .inlineCode, token: start)
		case Rc2Lexer.IEQ_START:
			aChunk = GenericChunk(type: .inlineEquation, token: start)
		default:
			parserLog.error("invalid chunk type: \(Rc2Lexer.ruleNames[start.getType() - 1])")
			fatalError()
		}
		guard let rchunk = aChunk else { fatalError("impossible") }
		if rchunk.isInline && curMarkdownChunk == nil {
			parserLog.warning("inline chunk found at top level")
			let err = ListenerError(type: .inlineChunkAtRoot, lineNumber: rchunk.startLine, charIndex: rchunk.startCharIndex, description: nil)
			errorReporter?.errors.append(err)
		}
		let chunk = AnyChunk(rchunk)
		if rchunk.isInline, let mc = curMarkdownChunk {
			mc.append(chunk: chunk)
		} else {
			chunks.append(chunk)
		}
		curChunk = chunk
	}
	override func exitChunk(_ ctx: Rc2RawParser.ChunkContext) {
		if curChunk?.type == .markdown { curMarkdownChunk = nil }
		curChunk?.endToken = ctx.getStop()
		curContext = nil
		curChunk = nil
	}
}
