lexer grammar Rc2Lexer;

CODE_START: {getCharPositionInLine() == 0}? '```' ;
CODE_ARG: '{r' ~'}'* '}' -> pushMode(IN_CODE);
EQ_START: { isEQStart() }? '$$' -> pushMode(IN_EQ);
IEQ_START: '$' { isInlineEqStart() }? -> pushMode(IN_IN_EQ);
IC_START: '`r ' -> pushMode(IN_ICODE);
MDOWN: .+?;

mode IN_ICODE;

IC_END: '`' -> popMode;
IC_CODE: ~[`]+;

mode IN_EQ;

EQ_END:  '$$' -> popMode;
EQ_CODE: ('$' ~'$' | ~'$')+;

mode IN_IN_EQ;

IEQ_CODE: ( ~'$' | [ \t\n] '$')+;
IEQ_END: '$' -> popMode;

mode IN_CODE;

CODE_END: {getCharPositionInLine() == 0}?'```' (NL | EOF) -> popMode;
NL: '\r'? '\n';
CODE: NL ANY+;
NOT_BACKTICK: ~('`');
fragment ANY: '`'? '`'? NOT_BACKTICK .*?;

