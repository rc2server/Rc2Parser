import XCTest
@testable import Rc2Parser

final class Rc2ParserTests: XCTestCase {
	func testBasicChunks() throws {
		print("input.count = \(src1.count)")
		let parser = RmdParser();
		let chunks = try parser.parse(input: src1)
		for aChunk in chunks {
			print("chunk \(aChunk.typeName)/\(aChunk.endToken?.typeName ?? "-"), start=\(aChunk.startCharIndex), end=\(aChunk.endCharIndex)")
		}
		XCTAssertEqual(chunks.count, 7)
	}
	
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(Rc2RawParser().text, "Hello, World!")
    }

    static var allTests = [
        ("testBasicChunks", testBasicChunks),
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
$$
"""#

