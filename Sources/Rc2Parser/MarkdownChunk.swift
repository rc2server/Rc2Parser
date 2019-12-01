//
//  File.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4

class MarkdownChunk: InternalChunk {
	init(context: Rc2RawParser.ChunkContext) {
		guard let token = context.getStart(), let cnt = token.getText() else { fatalError() }
		content = cnt
		startLine = token.getStartIndex()
		startCharIndex = token.getStartIndex()
		endCharIndex = token.getStopIndex()
		typeName = "Markdown"
	}
	
	var typeName: String
	
	var content: String
	
	var startLine: Int
	
	var startCharIndex: Int
	
	var endCharIndex: Int
	
	var endToken: Token? { didSet {
			guard let end = endToken else { return }
			endCharIndex = end.getStopIndex()
		}
	}
	
	func isEqualTo(_ other: Chunk) -> Bool {
		guard let chunk2 = other as? MarkdownChunk else { return false }
		return typeName == chunk2.typeName &&
			content == chunk2.content &&
			startLine == chunk2.startLine &&
			startCharIndex == chunk2.startCharIndex &&
			endCharIndex == chunk2.endCharIndex
	}
	
	
}
