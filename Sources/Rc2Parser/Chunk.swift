//
//  Chunk.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4

public protocol Chunk {

	var typeName: String {get}
	var content: String {get}
	var startLine: Int { get }
	var startCharIndex: Int { get }
	var endCharIndex: Int { get }

}

protocol ChunkPrivate {
	var endToken: Token? { get set }

	func isEqualTo(_ other: Chunk) -> Bool
}


typealias InternalChunk = Chunk & ChunkPrivate

public struct AnyChunk: Chunk {
	internal let chunk: InternalChunk
	var endToken: Token?
	internal init(_ wrapping: InternalChunk) {
		chunk = wrapping
	}
	public var typeName: String { return chunk.typeName }
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

public extension AnyChunk {
	static func ==(lhs: AnyChunk, rhs: AnyChunk) -> Bool {
		return lhs.chunk.isEqualTo(rhs.chunk)
	}
}

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
