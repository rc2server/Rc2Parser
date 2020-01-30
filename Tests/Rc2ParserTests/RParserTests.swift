//
//  RParserTests.swift
//  
//
//  Created by Mark Lilback on 12/11/19.
//

import XCTest
@testable import Rc2Parser
import Antlr4

enum LexerErrors: String, Error {
	case mismatchedTokens
}

final class RParserTests: XCTestCase {
	/// due to an unknown issue with the RFilter generated by antlr, newlines inside closures cause it to barf. have to not use for the moment.
	let basicText = #"""
	# some code
	z <- 2 + 443.2
	if (z != 445.32) {
		sleep(1)
	}
	rnorm(x,plot(1,"dude"))
	"""#
	let ieqTest = #"""
	value is $f$ dollars
	"""#
	
	func testInlineEquation() throws {
		let parser = RmdParser();
		let chunks = try parser.parse(input: ieqTest)
		XCTAssertEqual(chunks.count, 1)
		XCTAssertEqual(chunks[0].asMarkdown?.inlineChunks.count ?? 0, 1)
	}
	
//	func testSimpleHighlight() throws {
//		let text = """
//		some markdown
//		```{r foo}
//	y <- rnorm(20)
//		"""
//	}

	func testBasicHighlight() throws {
		let src = codeOnly
		let parser = try ManualChunkParser(text: src)
		let chunks = parser.parsedChunks
		let codeChunk = chunks.first(where: { $0.type == .code} )!
		let str = NSMutableAttributedString(string: src)
		let rmdParser = RmdParser()
		try rmdParser.highlightR(contents: str, range: codeChunk.innerRange)
		var keys = [SyntaxElement]()
		str.enumerateAttribute(SyntaxKey, in: codeChunk.innerRange, options: []) { (keyValue, attrRange, _) in
			guard let element = keyValue as? SyntaxElement else { return }
			keys.append(element)
			 print("got \(element.rawValue) for \(str.attributedSubstring(from: attrRange).string)")
		}
		XCTAssertEqual(keys[0], SyntaxElement.symbol)
//		XCTAssertEqual(keys[1], SyntaxElement.symbol)
//		XCTAssertEqual(keys[2], SyntaxElement.number)
//		XCTAssertEqual(keys[3], SyntaxElement.number)
//		XCTAssertEqual(keys[4], SyntaxElement.symbol)
//		XCTAssertEqual(keys[5], SyntaxElement.number)
//		XCTAssertEqual(keys[6], SyntaxElement.functonName)
//		XCTAssertEqual(keys[7], SyntaxElement.number)
//		XCTAssertEqual(keys[8], SyntaxElement.functonName)
//		XCTAssertEqual(keys[9], SyntaxElement.functonName)
//		XCTAssertEqual(keys[10], SyntaxElement.number)
	}
	

	func testNewton() throws {
		let parser = RmdParser();
		let start = CFAbsoluteTimeGetCurrent()
		let chunks = try parser.parse(input: newton)
		let stop = CFAbsoluteTimeGetCurrent()
		print("took \(String(format: "%.5f", stop - start)) seconds")
		XCTAssertEqual(chunks.count, 19)
	}

	
	func testManualParser() throws {
		let parser = try ManualChunkParser(text: newton)
		let chunks = parser.parsedChunks
		XCTAssertEqual(chunks.count, 59)
		XCTAssertEqual(chunks[0].type, .markdown)
		XCTAssertEqual(chunks[1].type, .inlineEquation)
		XCTAssertEqual(chunks[2].type, .markdown)
		XCTAssertEqual(chunks[3].type, .inlineEquation)
		XCTAssertEqual(chunks[5].type, .equation)
		XCTAssertEqual(chunks[11].type, .code)
		XCTAssertEqual(chunks.last!.type, .markdown)
//		chunks.forEach { print($0.type) }
	}
	
	func testFilterSpeed() throws {
		measure {
			let parser = RmdParser();
			_ = try! parser.parse(input: newton)
		}
	}

	static var allTests = [
		("testInlineEquation", testInlineEquation),
		("testBasicHighlight", testBasicHighlight),
		("testNewton", testNewton),
		("testManualParser", testManualParser),
	]
}

let codeOnly = #"""
```{r}
foo <- function(f, df, guess, conv) {
# comment here
rnorm(11)
}
```
"""#

let newton = #"""
Newton's method for finding a root of a differentiable function $f$ takes a guess $x$ and computes hopefully an improved guess as:
$$ x - \frac{f(x)}{Df(x)}$$
where $Df$ denotes the derivative of $f$.

Create a function called `newton_search` with four arguments: `f`, `df`, `guess`, `conv` (the convergence criterion), where `f` is function of interest and `df` is its derivative.
```{r}
newton_search <- function(f, df, guess, conv=0.001) {
# Note: If f does not have a root, we could be in an infinite loop.
improve <- function(guess, f, df) {
guess - f(guess) / df(guess)
}
while(abs(f(guess)) > conv) {
guess <- improve(guess, f, df)
}
guess
}
```
We pass `f` and `df` as arguments to `newton_serach`. We define a local functions (or helper function) within `newton_search` to compute the improvement and then test for convergence.

Use this function to find the root of $sin(x)$ near 3 using the actual symbolic derivative. The exact answer is $\pi$.
```{r}
newton_search(f = sin, df = cos, guess = 3)
newton_search(f = sin, df = cos, guess = 3, conv = 0.000001)
```
For reference: $\pi$ = `r pi`

In general you may not be able to compute the derivative exactly. Use the symmetric difference quotient to approximate the derivative of $f$ at $x$ numerically by the definition:
$$ Df \approx \frac{f(x + h) - f(x - h)}{2h} $$
for small $h$.

Define a function `make_derivative` with arguments `f` and `h`. The result returned should be a function closure that remembers both `f` and `h`.
```{r}
make_derivative <- function(f, h) {
function(x) (f(x + h) - f(x - h)) / (2*h)
}
```

Find the root of $sin(x)$ near 3 using numerical derivatives.
```{r}
Dsin <- make_derivative(f = sin, h = .001)
newton_search(f = sin, df = Dsin, guess = 3)
newton_search(f = sin, df = Dsin, guess = 3, conv = 0.000001)
```

The log-likelihood of the gamma distribution with scale parameter 1 can be written as:
$$ (\alpha -1)s -n\log\Gamma(\alpha) $$
where $\alpha$ is the shape parameter and $s = \sum \log X_i$ is the sufficient statistic.

Randomly draw a sample of $n = 30$ with a shape parameter of $\alpha = 4.5$. Using `newton_search` and `make_derivative`, find the maximum likelihood estimate of $\alpha$. Use the moment estimator of $\alpha$, i.e., $\bar X$ as the initial guess. The log-likelihood function in R is:
```{r}
x <- rgamma(n=30, shape=4.5)

gllik <- function() {
s <- sum(log(x))
n <- length(x)
function(a) {
(a - 1) * s - n * lgamma(a)
}
}
```
You must apply `newton_search` to the first and second derivatives (derived numerically using `make_derivative`) of the log-likelihood. The answer should be near 4.5.
```{r}
# The first and second derivatives of the likelihood:
dgllik <- make_derivative(gllik(), 0.001)
ddgllik <- make_derivative(dgllik, 0.001)

# The mle
newton_search(f = dgllik, df = ddgllik, guess = mean(x))
```
Note: The moment estimator is `r mean(x)`

"""#

