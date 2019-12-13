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
	rnorm(x,y)
	"""#
		
	func testBasicHighlight() throws {
		
		let parser = RmdParser();
		let str = NSMutableAttributedString(string: basicText)
		try parser.highlight(content: str)
		str.enumerateAttribute(RmdParser.SyntaxKey, in: NSRange(location: 0, length: basicText.count), options: []) { (keyValue, attrRange, _) in
			guard let element = keyValue as? RmdParser.SyntaxElement else { return }
			print("got \(element.rawValue) for \(str.attributedSubstring(from: attrRange).string)")
		}
	}
	
	static var allTests = [
		("testBasicHighlight", testBasicHighlight),
	]

}
