lexer grammar Rc2Lexer;

@lexer::declarations {
    #include "../LexerHelpers.hpp"
}

@lexer::definitions {
#include "../LexerHelpers.cpp"
}

YAML: '---' .+ '---';
CODE_START: { isCodeStartBackticks()}? '```{' -> pushMode(IN_CODE_ARG) ;
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

/*
Currently, the CODE_ARG variable is assumed to have R as the engine.  In the future, handling different engines could either create specefic tokens, or be implemented outside of the parser on the raw text extracted at this stage.
CG 2021-03-27
*/

mode IN_CODE_ARG;

CODE_ARGS: '}' ' '* NL -> skip, pushMode(IN_CODE);
CODE_ARG: NOT_ARG_END+;
fragment NOT_ARG_END: ~'}';

mode IN_CODE;

CODE_END: {isCodeEndBackticks()}? '```' ' '* (NL | EOF) -> mode(DEFAULT_MODE);
NL: '\r'? '\n';
CODE: ANY+;
NOT_BACKTICK: ~('`');
fragment ANY: '`'? '`'? NOT_BACKTICK .*?;

