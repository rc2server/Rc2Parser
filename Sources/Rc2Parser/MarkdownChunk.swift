//
//  MarkdowwnChunk.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4

/// a chunk of markdown possibly including inline chunks
public class MarkdownChunk: InternalChunk {
	
	internal init(context: Rc2RawParser.ChunkContext) {
		guard let token = context.getStart(), let cnt = token.getText() else { fatalError() }
		content = cnt
		startLine = token.getStartIndex()
		startCharIndex = token.getStartIndex()
		endCharIndex = token.getStopIndex()
		type = .markdown
		inlineChunks = []
	}
	
	public var type: ChunkType
	
	public var content: String
	
	public var startLine: Int
	
	public var startCharIndex: Int
	
	public var endCharIndex: Int
	
	/// inline chunks embedded in this chunk
	public private(set) var inlineChunks: [AnyChunk]
	
	internal func append(chunk: AnyChunk) {
		guard chunk.isInline else { fatalError("markdown can not non-linline chunks") }
		inlineChunks.append(chunk)
	}
	
	internal var endToken: Token? { didSet {
			guard let end = endToken else { return }
			endCharIndex = end.getStopIndex()
		}
	}
	
	internal func isEqualTo(_ other: Chunk) -> Bool {
		guard let chunk2 = other as? MarkdownChunk else { return false }
		return type == chunk2.type &&
			content == chunk2.content &&
			startLine == chunk2.startLine &&
			startCharIndex == chunk2.startCharIndex &&
			endCharIndex == chunk2.endCharIndex
	}
	
	
}
