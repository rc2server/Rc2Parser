//
//  Chunk.swift
//  
//
//  Created by Mark Lilback on 12/1/19.
//

import Foundation
import Antlr4

/// The types of chunks that can be returned by the parser
public enum ChunkType: String, CaseIterable, Codable {
	/// plain markdown  possibly with InlineChunks
	case markdown
	/// R code
	case code
	/// a Latex equation
	case equation
	/// an equation embedded in markdown
	case inlineEquation
	/// R code embedded in markdown
	case inlineCode
}

/// a Chunk parsed from an RMarkdown file
public protocol Chunk: CustomStringConvertible {
	/// the type of the chunk
	var type: ChunkType { get }
	/// the textual content of the chunk
	var content: String { get }
	/// the starting line number
	var startLine: Int { get }
	/// the character index where this chunk starts
	var startCharIndex: Int { get }
	/// the character index where this chunk ends (inclusive, not like endIndex)
	var endCharIndex: Int { get }
	/// the range of this chunk in the parsed string
	var range: NSRange { get }
	/// the range of the content of this chunk, without start/end/argument contents
	var innerRange: NSRange { get }
	/// true if the is an inline chunk embedded in a markdown chunk
	var isInline: Bool { get }
}

// default implementation
extension Chunk {
	public var description: String {
		return "\(type): range:\(range)"
	}
	public var isInline: Bool { return false }
	// all tokens must be at least 1 character
	public var range: NSRange {
		NSRange(location: startCharIndex, length: endCharIndex - startCharIndex + 1)
	}
	public var innerRange: NSRange { return range }
}

/// properties needed for internal use only
protocol ChunkPrivate {
	func isEqualTo(_ other: Chunk) -> Bool
}

/// A chunk that is nested inside a MarkdownChunk
public protocol InlineChunk: Chunk {}

public protocol CodeChunk: Chunk {
	var arguments: String { get }
	var code: String { get }
}

public protocol EquationChunk: Chunk {
	var code: String { get }
}

/// the type representing an inline equation
public typealias InlineEquationChunk = EquationChunk & InlineChunk

/// the type representing an inline code chunk
public typealias InlineCodeChunk = CodeChunk & InlineChunk

/// chunk type used internally in the package in place of Chunk
typealias InternalChunk = Chunk & ChunkPrivate

/// a type-erasing wrapper around a Chunk
public class AnyChunk: Chunk {
	internal private(set) var chunk: InternalChunk

	internal init(_ wrapping: InternalChunk) {
		chunk = wrapping
	}

	/// the chunk as a CodeChunk, or nil if it isn't a CodeChunk
	public var asCode: CodeChunk? { return chunk as? CodeChunk }
	/// the chunk as a MarkdownChunk, or nil if it isn't a MarkdownChunk
	public var asMarkdown: MarkdownChunk? { return chunk as? MarkdownChunk }
	/// the chunk as a EquationChunk, or nil if it isn't a EquationChunk
	public var asEquation: EquationChunk? { return chunk as? EquationChunk }
	/// the chunk as an InlineEquationChunk, or nil if it isn't an InlineEquationChunk
	public var asInlineEquation: InlineEquationChunk? { return chunk as? InlineEquationChunk }
	/// the chunk as an InlineCodeChunk, or nil if it isn't an InlineCodeChunk
	public var asInlineCode: InlineCodeChunk? { return chunk as? InlineCodeChunk }

	public var type: ChunkType { return chunk.type }
	public var content: String { return chunk.content }
	public var startLine: Int { return chunk.startLine }
	public var startCharIndex: Int { return chunk.startCharIndex }
	public var endCharIndex: Int { return chunk.endCharIndex }
	public var isInline: Bool { return chunk is InlineChunk }
	public var range: NSRange { return chunk.range }
	public var innerRange: NSRange { return chunk.innerRange }
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
