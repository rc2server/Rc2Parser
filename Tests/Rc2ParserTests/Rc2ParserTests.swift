import XCTest
@testable import Rc2Parser

final class Rc2ParserTests: XCTestCase {
	func testBasicChunks() throws {
		let parser = RmdParser();
		let chunks = try parser.parse(input: src1)
		for aChunk in chunks {
			print("\(aChunk.type) range=\(aChunk.range) irange=\(aChunk.innerRange) c:\(aChunk.content)")
		}
		XCTAssertEqual(chunks.count, 4)
		XCTAssertEqual(chunks[0].type, ChunkType.code)
		XCTAssertEqual(chunks[0].content, "```{r title}\nu <- 22 `21`\n```\n")
		XCTAssertEqual(chunks[1].type, ChunkType.markdown)
		XCTAssertEqual(chunks[1].asMarkdown!.inlineChunks[0].type, ChunkType.inlineCode);
		XCTAssertEqual(chunks[1].asMarkdown!.inlineChunks[1].type, ChunkType.inlineEquation);
		XCTAssertEqual(chunks[2].type, ChunkType.equation)
	}

	func testRMd1() throws {
		let path = "/tmp/test1.Rmd"
		print("looking for \(path)")
		guard FileManager.default.fileExists(atPath: path) else { print("test file not found"); return }
		let src = try String(contentsOf: URL(fileURLWithPath: path, isDirectory: false))
		let parser = RmdParser();
		let chunks = try parser.parse(input: src)
		for aChunk in chunks {
//			print("\(aChunk) \(aChunk.type) range=\(aChunk.range): \(aChunk.content)")
			print("\(aChunk.type) range=\(aChunk.range) irange=\(aChunk.innerRange)")
		}
		let inlineCount = chunks.filter( { $0.type == .markdown }).reduce(0, { $0 + (($1.asMarkdown)?.inlineChunks.count ?? 0) })
		XCTAssertEqual(inlineCount, 20)
		XCTAssertEqual(chunks.count, 39)
	}

    static var allTests = [
        ("testBasicChunks", testBasicChunks),
		("testRMd1", testRMd1),
    ]
}


let src1 = #"""
```{r title}
u <- 22 `21`
```
##two `r \"oo\"` dl $\frac{1}{n} \sum_{i=i}^{n} x_{i}$

$$
\{ 43 ^ 42 \}
5-3^4
$$ some other content
"""#

