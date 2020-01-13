# Rc2Parser

An Rmd parser based on Antlr 4. 

## Building ANTLR4 files from grammar

* The antlr jar must be in your classpath
* `java -Xmx500M org.antlr.v4.Tool -Dlanguage=Swift -o Sources/Rc2Parser/generated -visitor *.g4`

## Generator Error

For some reason, RFilter.eat will generate the lines
	`try match(RFilter.Tokens.NL.rawValue)
	let token = _localctx.castdown(EatContext.self) as! WritableToken`

which is incorrect as self will never be a writable token. The result of match, howver, will. 
	`let token = try match(RFilter.Tokens.NL.rawValue) as! WritableToken`

this change needs to be made everytime code is regeneratred.

## Testing

copy test1.Rmd to /tmp

