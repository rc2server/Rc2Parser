//
//  File.swift
//  
//
//  Created by Mark Lilback on 12/11/19.
//

import XCTest
@testable import Rc2Parser

final class RParserTests: XCTestCase {
	let basicText = #"""
	# some code
	z <- 2
	rnorm(x,plot(1,"dude"))
	"""#
		
	func testBasicHighlight() throws {
		
		let parser = RmdParser();
		let str = NSMutableAttributedString(string: basicText)
		try parser.highlight(content: str)
		var keys = [SyntaxElement]()
		str.enumerateAttribute(SyntaxKey, in: NSRange(location: 0, length: basicText.count), options: []) { (keyValue, attrRange, _) in
			guard let element = keyValue as? SyntaxElement else { return }
			keys.append(element)
			// print("got \(element.rawValue) for \(str.attributedSubstring(from: attrRange).string)")
		}
		XCTAssertEqual(keys[0], SyntaxElement.comment)
		XCTAssertEqual(keys[1], SyntaxElement.number)
		XCTAssertEqual(keys[2], SyntaxElement.keyword)
		XCTAssertEqual(keys[3], SyntaxElement.keyword)
		XCTAssertEqual(keys[4], SyntaxElement.number)
		XCTAssertEqual(keys[5], SyntaxElement.quote)
	}
	
	static var allTests = [
		("testBasicHighlight", testBasicHighlight),
	]

}
