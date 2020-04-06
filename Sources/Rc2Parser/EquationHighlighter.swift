//
//  EquationHighlighter.swift
//  
//
//  Created by Mark Lilback on 2/5/20.
//

import Foundation

public class EquationHighlighter {
	private let commentRegex: NSRegularExpression
	private let commendPkgRegex: NSRegularExpression
	private let keywordRegex: NSRegularExpression

	private let comPattern = #"^\begin\{comment\}\s*\n^(.*)\n^\end\{comment\}\s+"#
	
	public init() {
		do {
			commentRegex = try NSRegularExpression(pattern: "%.*$", options: [])
			keywordRegex = try NSRegularExpression(pattern: "\\\\([a-z]+)", options: [])
			commendPkgRegex = try NSRegularExpression(pattern: comPattern, options: [.anchorsMatchLines])
		} catch {
			fatalError("failed to compile regular expression")
		}
	}
	
	public func highlight(string: NSMutableAttributedString, range: NSRange) {
		commentRegex.enumerateMatches(in: string.string, options: [], range: range) { (result, flags, stop) in
			guard let tcresult = result else { parserLog.warning("got nil result"); return }
			string.addAttribute(SyntaxKey, value: SyntaxElement.comment, range: tcresult.range)
		}
		commendPkgRegex.enumerateMatches(in: string.string, options: [], range: range) { (result, flags, stop) in
			guard let tcresult = result, tcresult.numberOfRanges == 2
				else { parserLog.warning("got nil result"); return }
			let contentRange = tcresult.range(at: 1)
			string.addAttribute(SyntaxKey, value: SyntaxElement.comment, range: contentRange)
		}
		keywordRegex.enumerateMatches(in: string.string, options: [], range: range) { (result, flags, stop) in
			guard let tcresult = result, tcresult.numberOfRanges == 2
				else { parserLog.warning("got nil result"); return }
			let contentRange = tcresult.range(at: 1)
			string.addAttribute(SyntaxKey, value: SyntaxElement.functionName, range: contentRange)
		}
	}
}
