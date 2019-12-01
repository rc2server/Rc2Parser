//
//  Chunk.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4

public enum ChunkType: String, CaseIterable, Codable {
	case markdown
	case code
	case equation
	case inlineEquation
	case inlineCode
}

public protocol Chunk {
	var type: ChunkType { get }
	var content: String { get }
	var startLine: Int { get }
	var startCharIndex: Int { get }
	var endCharIndex: Int { get }

}

/// properties needed for internal use only
protocol ChunkPrivate {
	var endToken: Token? { get set }

	func isEqualTo(_ other: Chunk) -> Bool
}

/// A chunk that is nested inside a MarkdownChunk
public protocol InlineChunk: Chunk {}

typealias InternalChunk = Chunk & ChunkPrivate

public class AnyChunk: Chunk {
	internal private(set) var chunk: InternalChunk
	var endToken: Token? {
		didSet { chunk.endToken = endToken }
	}
	internal init(_ wrapping: InternalChunk) {
		chunk = wrapping
		endToken = wrapping.endToken
	}
	public var type: ChunkType { return chunk.type }
	public var content: String { return chunk.content }
	public var startLine: Int { return chunk.startLine }
	public var startCharIndex: Int { return chunk.startCharIndex }
	public var endCharIndex: Int { return chunk.endCharIndex }
}

extension AnyChunk: ChunkPrivate {
	func isEqualTo(_ other: Chunk) -> Bool {
		guard let ochunk = other as? InternalChunk else { fatalError("invalid parameter") }
		return chunk.isEqualTo(ochunk)
	}
	
	func isEqualTo(_ other: InternalChunk) -> Bool {
		return chunk.isEqualTo(other)
	}
}

extension AnyChunk: Equatable {
	/// comparison function that implements Equatable
	public static func ==(lhs: AnyChunk, rhs: AnyChunk) -> Bool {
		return lhs.chunk.isEqualTo(rhs.chunk)
	}
}

/// A Collection of Chunks
public struct ChunkCollection: RandomAccessCollection {
	public typealias Index = Int
	public typealias Element = AnyChunk
	private let chunks: [AnyChunk]
	
	init(_ contents: [AnyChunk]) {
		chunks = contents
	}
	
	public var startIndex: ChunkCollection.Index { return 0 }
	public var endIndex: ChunkCollection.Index { return chunks.count }
	
	public func index(before i: ChunkCollection.Index) -> ChunkCollection.Index {
		return chunks.index(before: i)
	}
	
	public func index(after i: Int) -> Int {
		return chunks.index(after: i)
	}
	
	public subscript(position: ChunkCollection.Index) -> ChunkCollection.Element {
		return chunks[position]
	}
}
