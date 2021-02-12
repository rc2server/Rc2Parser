lexer grammar Rc2Lexer;

@lexer::declarations {
    #include "../LexerHelpers.hpp"
}

@lexer::definitions {
#include "../LexerHelpers.cpp"
}

CODE_START: { isCodeBackticks() }? '```' ;
CODE_ARG: '{r' ~'}'* '}' -> pushMode(IN_CODE);
EQ_START: { isEQStart() }? '$$' -> pushMode(IN_EQ);
IEQ_START: '$' { isInlineEqStart() }? -> pushMode(IN_IN_EQ);
IC_START: { isInlineCodeStart }? '`r ' -> pushMode(IN_ICODE);
YAML_START: { isYamlDashes() }? '---' -> pushMode(IN_YAML);
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

mode IN_YAML;
YAML_END: { isYamlDashes() }? '---' (NL | EOF) -> popMode;
YAML: NL FRONT_MATTER+;
NOT_DASH: ~('-');
fragment FRONT_MATTER: '-'? '-'? NOT_DASH .*?;

mode IN_CODE;

CODE_END: { isCodeBackticks() }? '```' (NL | EOF) -> popMode;
NL: '\r'? '\n';
CODE: NL ANY+;
NOT_BACKTICK: ~('`');
fragment ANY: '`'? '`'? NOT_BACKTICK .*?;

