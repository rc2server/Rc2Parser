# Rc2Parser

An Rmd parser based on Antlr 4. 

## Building ANTLR4 files from grammar

* The antlr jar must be in your classpath
* `java -Xmx500M org.antlr.v4.Tool -Dlanguage=Swift -o Sources/Rc2Parser/generated -visitor *.g4`

## Testing

copy test1.Rmd to /tmp

