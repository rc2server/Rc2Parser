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
		guard let token = context.getStart() else { fatalError() }
		content = context.getText()
		startLine = token.getStartIndex()
		startCharIndex = token.getStartIndex()
		endCharIndex = context.getStop()!.getStopIndex()
		type = .markdown
		inlineChunks = []
	}
	
	internal init(content: String, line: Int, startIndex: Int, stopIndex: Int) {
		type = .markdown
		inlineChunks = []
		self.content = content
		self.startLine = line
		self.startCharIndex = startIndex
		self.endCharIndex = stopIndex
	}
	
	public var type: ChunkType
	
	public var content: String
	
	public var startLine: Int
	
	public var startCharIndex: Int
	
	public var endCharIndex: Int
	
	/// inline chunks embedded in this chunk
	public private(set) var inlineChunks: [AnyChunk]
	
	internal func append(context: Rc2RawParser.MdownContext) {
		guard let stop = context.stop else { fatalError("no stop index in markdown context") }
		content += context.getText()
		endCharIndex = stop.getStopIndex()
	}
	
	internal func append(markdown other: MarkdownChunk) {
		content += other.content
		endCharIndex = other.endCharIndex
	}

	internal func append(chunk: AnyChunk) {
		guard chunk.isInline else { fatalError("markdown can not non-linline chunks") }
		inlineChunks.append(chunk)
		content += chunk.content
		endCharIndex = chunk.endCharIndex
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
