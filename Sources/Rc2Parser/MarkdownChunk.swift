//
//  MarkdowwnChunk.swift
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
		type = .markdown
	}
	
	var type: ChunkType
	
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
		return type == chunk2.type &&
			content == chunk2.content &&
			startLine == chunk2.startLine &&
			startCharIndex == chunk2.startCharIndex &&
			endCharIndex == chunk2.endCharIndex
	}
	
	
}
