/*
 [The "BSD licence"]
 Copyright (c) 2013 Terence Parr
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions
 are met:
 1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
 3. The name of the author may not be used to endorse or promote products
    derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/**
derived from http://svn.r-project.org/R/trunk/src/main/gram.y
http://cran.r-project.org/doc/manuals/R-lang.html#Parser

I'm no R genius but this seems to work.

Requires RFilter.g4 to strip away NL that are really whitespace,
not end-of-command. See TestR.java

Usage:

$ antlr4 R.g4 RFilter.g4
$ javac *.java
$ java TestR sample.R
... prints parse tree ...
*/
grammar R;

prog:   (   expr_or_assign (';'|NL)*
        |   NL
        )*
        EOF
    ;


expr_or_assign
    :   expr assignOp expr_or_assign # assignment
    |   expr # singleExp
    ;

expr:   expr '[[' sublist ']' ']'  # listRef // '[[' follows R's yacc grammar
    |   expr '[' sublist ']' # array
    |   expr ('::'|':::') expr # descendant
    |   expr ('$'|'@') expr # dollarOrAt
    |   <assoc=right> expr '^' expr # house
    |   (MINUS|PLUS) expr # plusNeg
    |   expr ':' expr # colon
    |   expr USER_OP expr # userExpr // anything wrappedin %: '%' .* '%'
    |   expr (ASTERICK|SLASH) expr # mulDiv
    |   expr (PLUS|MINUS) expr # plusMinus
    |   expr rcomparison expr # comparison
    |	rcomment # comment
    |   NOT expr # notExpr
    |   expr AND_OP expr # andExpr
    |   expr (BAR|DBAR) expr # orExpr
    |   TILDE expr # tildeExp
    |   expr TILDE expr # expTildeExp
    |   expr assignOp expr # assignExp
    |   'function' '(' formlist? ')' expr # defineFunc // define function
    |   expr '(' sublist ')'     # callFunc         // call function
    |   '{' exprlist '}' # compoundStmt // compound statement
    |   IF '(' expr ')' expr # ifStmt
    |   IF '(' expr ')' expr ELSE expr # ifelseStmt
    |   FOR '(' ID IN expr ')' expr # forLoop
    |   WHILE '(' expr ')' expr # whileLoop
    |   REPEAT expr # repeatLoop
    |   QMARK expr # helpRequest // get help on expr, usually string or ID
    |   keyword # keywordRule
    |   '(' expr ')' # listExp
    |   ID # idRule
    |   STRING # stringRule
    |   HEX # hexRule
    |   number # numRule
    ;

exprlist
    :   expr ((';'|NL) expr?)*
    |
    ;

formlist : form (',' form)* ;

form:   ID
    |   ID '=' expr
    |   '...'
    |   '.'
    ;

sublist : sub (',' sub)* ;

sub :   expr
    |   ID '='
    |   ID '=' expr
    |   STRING '='
    |   STRING '=' expr
    |   'NULL' '='
    |   'NULL' '=' expr
    |   '...'
    |   '.'
    |
    ;

functionCall: expr '(' sublist ')' ;

rcomparison: LT | LTE | GT | GTE | EQUAL_OP | NOTEQUAL_OP ;

assignOp: ASSIGN | DASSIGN | RASSIGN | DRASSIGN | EQ_CHAR ;
	
number : INT | FLOAT | COMPLEX ;

rcomment : COMMENT ;

keyword : IF # ifKeyWord
		| ELSE # elseKeyword
		| REPEAT # repeatKeyword
		| WHILE # whileKeyword
		| FOR # forKeyword
		| BREAK # breakKeyword
		| IN # inKeyword
		| NEXT # hexKeyword
		| FUNCTION # functionKeyword
		| TRUE # trueKeyword
		| FALSE # falseKeyword
		| NA # naKeyword
		| NaN # nanKeyword
		| INF # infKeyword
		| NULL # nullKeyword
		;


HEX :   '0' ('x'|'X') HEXDIGIT+ [Ll]? ;

INT :   DIGIT+ [Ll]? ;

fragment
HEXDIGIT : ('0'..'9'|'a'..'f'|'A'..'F') ;

FLOAT:  DIGIT+ '.' DIGIT* EXP? [Ll]?
    |   DIGIT+ EXP? [Ll]?
    |   '.' DIGIT+ EXP? [Ll]?
    ;
fragment
DIGIT:  '0'..'9' ;
fragment
EXP :   ('E' | 'e') (PLUS | MINUS)? INT ;

COMPLEX
    :   INT 'i'
    |   FLOAT 'i'
    ;

STRING
    :   '"' ( ESC | ~[\\"] )*? '"'
    |   '\'' ( ESC | ~[\\'] )*? '\''
    |   '`' ( ESC | ~[\\'] )*? '`'
    ;

fragment
ESC :   '\\' [abtnfrv"'\\]
    |   UNICODE_ESCAPE
    |   HEX_ESCAPE
    |   OCTAL_ESCAPE
    ;

fragment
UNICODE_ESCAPE
    :   '\\' 'u' HEXDIGIT HEXDIGIT HEXDIGIT HEXDIGIT
    |   '\\' 'u' '{' HEXDIGIT HEXDIGIT HEXDIGIT HEXDIGIT '}'
    ;

fragment
OCTAL_ESCAPE
    :   '\\' [0-3] [0-7] [0-7]
    |   '\\' [0-7] [0-7]
    |   '\\' [0-7]
    ;

fragment
HEX_ESCAPE
    :   '\\' HEXDIGIT HEXDIGIT?
    ;

ID  :   '.' (LETTER|'_'|'.') (LETTER|DIGIT|'_'|'.')*
    |   LETTER (LETTER|DIGIT|'_'|'.')*
    ;

fragment LETTER  : [a-zA-Z] ;

IF : 'if' ;
ELSE : 'else';
REPEAT : 'repeat';
WHILE : 'while';
FOR : 'for';
IN : 'in';
BREAK : 'break';
NEXT : 'next';
FUNCTION: 'function';

AND_OP: AMP | DAMP;

PAR_OPEN: '(';
PAR_CLOSE: ')';
BRA_OPEN: '[';
BRA_CLOSE: ']';
DBRA_OPEN: '[[';
DBRA_CLOSE: ']]';
BRC_OPEN: '{';
BRC_CLOSE: '}';
QMARK : '?';
PLUS : '+' ;
MINUS : '-' ;
ASTERICK : '*' ;
SLASH : '/' ;
LT : '<' ;
LTE : '<=' ;
GT : '>' ;
GTE : '>=' ;
EQUAL_OP : '==';
NOTEQUAL_OP : '!=' ;
NOT : '!';
PERCENT: '%';

HASH: '#';
BAR: '|';
DBAR: '||';
AMP: '&';
DAMP: '&&';
COLEQ: ':=';
ASSIGN: '<-';
DASSIGN: '<<-';
RASSIGN: '->';
DRASSIGN: '->>';
EQ_CHAR: '=';
TRIPLE_COLON : ':::';
DOUBLE_COLON : '::';
COLON : ':';
DOLLAR_CHAR : '$';
AT_CHAR: '@';
TILDE : '~' ;
USCORE : '_';
PERIOD : '.';
SQUOTE: '\'';
DQUOTE: '"';
TRIPLE_DOT: '...';
COMMA: ',';
BACKTICK: '`';
SEMI: ';';
CARAT: '^';
NULL: 'NULL';
NaN: 'NaN';
TRUE: 'TRUE';
FALSE: 'FALSE';
NA: 'NA';
INF: 'Inf';

USER_OP :   '%' .*? '%' ;

COMMENT :   '#' .*? '\r'? '\n' ;

// Match both UNIX and Windows newlines
NL      :   '\r'? '\n' ;

WS      :   [ \t\u000C]+ -> skip ;
