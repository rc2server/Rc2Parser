lexer grammar TestLexer;

@lexer::declarations {
    #include "../LexerHelpers.hpp"
}

@lexer::definitions {
#include "../LexerHelpers.cpp"
}

CODE_DELIM          :   {getCharPositionInLine() == 0}? '```';
CODE_OPTS_START     :   '{';
CODE_OPTS_END       :   '}';
EQ_DELIM            :   '$$';
IEQ_DELIM           :   '$';
ICODE_START         :   {getCharPositionInLine() == 0}? '`r';
ICODE_END           :   '`';
YAML_DELIM          :   '---';
WS                  :   [ \t]; // ->skip;
NL                  :   '\r'? '\n';
TEXT                :   .+?;


//lexer grammar Rc2Lexer;
//
//@lexer::declarations {
//    #include "../LexerHelpers.hpp"
//}
//
//@lexer::definitions {
//#include "../LexerHelpers.cpp"
//}
//
//// Two different ways to handle yaml (CG 2020-07-16)
//YAML_START          :   '---' -> pushMode(IN_YAML);
////Alternate YAML Lexing ---> No real parsing or lexing.
////YAML                :   '---' .+? '---';
//CODE_START          :   {getCharPositionInLine() == 0}? '```' ;
////CODE_ARG: '{r' ~'}'* '}' -> pushMode(IN_CODE);
//// Go into CODE_ARGS MODE, then into IN_CODE.
//CODE_ARGS_START     :   '{r' -> pushMode(CODE_ARGS);
//EQ_START            :   { isEQStart() }? '$$' -> pushMode(IN_EQ);
//IEQ_START           :   '$' { isInlineEqStart() }? -> pushMode(IN_IN_EQ);
//IC_START            :   '`r ' -> pushMode(IN_ICODE);
//
//MDOWN               :   .+?;
//
//mode IN_YAML;
//YAML                :   .+?;
//YAML_END            :   '---' -> popMode;
//
//mode CODE_ARGS;
//
//WS                  :   [ \t] ->skip;
//NL                  :   '\r'? '\n';
//EQ_CHAR             :   '=';
//COMMA               :   ','-> skip;
//HEX                 :   '0' ('x'|'X') HEXDIGIT+ [Ll]? ;
//
//INT                 :   DIGIT+ [Ll]? ;
//
//fragment HEXDIGIT   :   ('0'..'9'|'a'..'f'|'A'..'F') ;
//
//FLOAT               :   DIGIT+ '.' DIGIT* EXP? [Ll]?
//                    |   DIGIT+ EXP? [Ll]?
//                    |   '.' DIGIT+ EXP? [Ll]?
//                    ;
//
//fragment DIGIT      :   '0'..'9' ;
//
//fragment EXP        :   ('E' | 'e') (PLUS | MINUS)? INT ;
//
//COMPLEX             :   INT 'i'
//                    |   FLOAT 'i'
//                    ;
//PLUS                :   '+';
//MINUS               :   '-';
//
//BOOL                :   'TRUE' | 'FALSE';
//
//STRING              :   '"' ( ESC | ~[\\"] )*? '"'
//                    |   '\'' ( ESC | ~[\\'] )*? '\''
//                    |   '`' ( ESC | ~[\\'] )*? '`'
//                    ;
//
//ID                  :   '.' (LETTER|'_'|'.') (LETTER|DIGIT|'_'|'.')*
//                    |   LETTER (LETTER|DIGIT|'_'|'.')*
//                    ;
//fragment LETTER     :   [a-zA-Z] ;
//
//fragment ESC        :   '\\' [abtnfrv"'\\]
//                    |   UNICODE_ESCAPE
//                    |   HEX_ESCAPE
//                    |   OCTAL_ESCAPE
//                    ;
//
//fragment UNICODE_ESCAPE
//                    :   '\\' 'u' HEXDIGIT HEXDIGIT HEXDIGIT HEXDIGIT
//                    |   '\\' 'u' '{' HEXDIGIT HEXDIGIT HEXDIGIT HEXDIGIT '}'
//                    ;
//
//fragment OCTAL_ESCAPE
//                    :   '\\' [0-3] [0-7] [0-7]
//                    |   '\\' [0-7] [0-7]
//                    |   '\\' [0-7]
//                    ;
//
//fragment HEX_ESCAPE :   '\\' HEXDIGIT HEXDIGIT?;
//
//CODE_ARGS_END       :   '}' NL -> mode(IN_CODE);
//
//mode IN_ICODE;
//IC_CODE             :   ~[`]+;
//IC_END              :   '`' -> popMode;
//
//mode IN_EQ;
//EQ_CODE             :   ('$' ~'$' | ~'$')+;
//EQ_END              :   '$$' -> popMode;
//
//mode IN_IN_EQ;
//IEQ_CODE            :   ( ~'$' | [ \t\n] '$')+;
//IEQ_END             :   '$' -> popMode;
//
//mode IN_CODE;
//CODE                :   ANY+ NL?;
//NOT_BACKTICK        :   ~('`');
//fragment ANY        :   '`'? '`'? NOT_BACKTICK .*?;
//CODE_END            :   {getCharPositionInLine() == 0}?'```' (NL | EOF) -> popMode;
//
////MDOWN: .+?;
////WS: [ \t]; // ->skip;
////SUPPORTED OPTIONS
///*
//EVAL: 'eval';
//ECHO: 'echo';
//RESULTS: 'results';
//COLLAPSE: 'collapse';
//PROMPT: 'prompt';
//COMMENTS: 'comment';
//FIG_KEEP: 'fig.keep';
//FIG_SHOW: 'fig.show';
//FIG_ALIGN: 'fig.align';
//FIG_PATH: 'fig.path';
//DEV: 'dev';
//DEV_ARGS: 'dev.args';
//DPI: 'dpi';
//FIG_EXT: 'fig.ext';
//FIG_WIDTH: 'fig.width';
//FIG_HEIGHT: 'fig.height';
//FIG_ENV: 'fig.env';
//FIG_CAP: 'fig.cap';
//FIG_SCAP: 'fig.scap';
//FIG_LP: 'fig.lp';
//FIG_SUBCAP: 'fig.subcap';
//FIG_POS: 'fig.pos';
//OUT_WIDTH: 'out.width';
//OUT_HEIGHT: 'out.height';
//OUT_EXTRA: 'out.extra';
//WARNING: 'warning';
//ERROR: 'error';
//MESSAGE: 'message';
//RENDER: 'render';
//REF_LABEL: 'ref.label';
//CHILD: 'child';
//ENGINE: 'engine';
//SPLIT: 'split';
//INCLUDE: 'include';
//
////UNSUPPORTED OPTIONS
//TIDY: 'tidy';
//TIDY_OPTS: 'tidy.opts';
//HIGHLIGHT: 'highlight';
//STRIP_WHITE: 'strip.white';
//SIZE: 'size';
//BACKGROUND: 'background';
//CLASS_SOURCE: 'class.source';
//ATTR_SOURCE: 'attr.source';
////Cache Options
//CACHE: 'cache';
//CACHE_PATH: 'cache.path';
//CACHE_VARS: 'cache.vars';
//CACHE_LAZY: 'cache.lazy';
//DEPENDSON: 'dependson';
//AUTODEP: 'autodep';
//CACHE_REBUILD: 'cache.rebuild';
//FIG_RETINA: 'fig.retina';
//EXTERNAL: 'external';
//SANITIZE: 'sanitize';
//
//RESIZE_WIDTH: 'resize.width';
//RESIZE_HEIGHT: 'resize.height';
//FIG_DIM: 'fig.dim';
////Animation
//INTERVAL: 'interval';
//ANIOPTS: 'aniopts';
//ANIMATION_HOOK: 'animation.hook';
//FFMPEG_BITRATE: 'ffmpeg.bitrate';
//FFMPEG_FORMAT: 'ffmpeg.format';
//PURL: 'purl';*/
//
//
////mode IN_YAML;
////NL: '\r'? '\n';
////COLON: ':';
////DELIM: WS WS;
////ID  :   '.' (LETTER|'_'|'.') (LETTER|DIGIT|'_'|'.')*
////    |   LETTER (LETTER|DIGIT|'_'|'.')*
////    ;
////fragment LETTER  : [a-zA-Z] ;
////YAML_END: '---' (NL|EOF) -> popMode;




////2020-07-16 CG:  Code deleted from CodeArgs.
//OPTION_KEY  :     {_input.LA(1) == '='}? ID;
//OPTION_VALUE:   INT
//                |   FLOAT
//                |   BOOL
//                |   STRING
//                |   ID
//                ;
//
//OPTION_OTHER:   [ ,]+? -> skip;
//CODE_ARG: WS* ID WS* EQ_CHAR WS* (ID|STRING|INT|FLOAT|BOOL) WS* COMMA |
//             WS* ID WS* EQ_CHAR WS* (ID|STRING|INT|FLOAT|BOOL) WS*
//             ;
//{_input.LA(-1) == '=' && _input.LA(1) == ','}?
////ode ARG_VALUE;
//OPTION_VALUE:     {_input.LA(1) == ',' | '}'}? (ID|STRING|BOOL|FLOAT|INT);// -> popMode;
////OPTION_VALUE:    {_input.LA(-1) == '=' && _input.LA(1) == ','}? WS* (INT|FLOAT|BOOL|STRING|ID);
////{_input.LA(1) == (','||'\}'};

//HEX                 :   '0' ('x'|'X') HEXDIGIT+ [Ll]? ;
//
//INT                 :   DIGIT+ [Ll]? ;
//
//fragment HEXDIGIT   :   ('0'..'9'|'a'..'f'|'A'..'F') ;
//
//FLOAT               :   DIGIT+ '.' DIGIT* EXP? [Ll]?
//                    |   DIGIT+ EXP? [Ll]?
//                    |   '.' DIGIT+ EXP? [Ll]?
//                    ;
//
//fragment DIGIT      :   '0'..'9' ;
//
//fragment EXP        :   ('E' | 'e') (PLUS | MINUS)? INT ;
//
//COMPLEX             :   INT 'i'
//                    |   FLOAT 'i'
//                    ;
//PLUS                :   '+';
//MINUS               :   '-';
//
//BOOL                :   'TRUE' | 'FALSE';
//
//STRING              :   '"' ( ESC | ~[\\"] )*? '"'
//                    |   '\'' ( ESC | ~[\\'] )*? '\''
//                    |   '`' ( ESC | ~[\\'] )*? '`'
//                    ;
//
//ID                  :   '.' (LETTER|'_'|'.') (LETTER|DIGIT|'_'|'.')*
//                    |   LETTER (LETTER|DIGIT|'_'|'.')*
//                    ;
//fragment LETTER     :   [a-zA-Z] ;
//
//fragment ESC        :   '\\' [abtnfrv"'\\]
//                    |   UNICODE_ESCAPE
//                    |   HEX_ESCAPE
//                    |   OCTAL_ESCAPE
//                    ;
//
//fragment UNICODE_ESCAPE
//                    :   '\\' 'u' HEXDIGIT HEXDIGIT HEXDIGIT HEXDIGIT
//                    |   '\\' 'u' '{' HEXDIGIT HEXDIGIT HEXDIGIT HEXDIGIT '}'
//                    ;
//
//fragment OCTAL_ESCAPE
//                    :   '\\' [0-3] [0-7] [0-7]
//                    |   '\\' [0-7] [0-7]
//                    |   '\\' [0-7]
//                    ;
//
//fragment HEX_ESCAPE :   '\\' HEXDIGIT HEXDIGIT?;


//MDOWN: .+?;
//WS: [ \t]; // ->skip;
//SUPPORTED OPTIONS
/*
EVAL: 'eval';
ECHO: 'echo';
RESULTS: 'results';
COLLAPSE: 'collapse';
PROMPT: 'prompt';
COMMENTS: 'comment';
FIG_KEEP: 'fig.keep';
FIG_SHOW: 'fig.show';
FIG_ALIGN: 'fig.align';
FIG_PATH: 'fig.path';
DEV: 'dev';
DEV_ARGS: 'dev.args';
DPI: 'dpi';
FIG_EXT: 'fig.ext';
FIG_WIDTH: 'fig.width';
FIG_HEIGHT: 'fig.height';
FIG_ENV: 'fig.env';
FIG_CAP: 'fig.cap';
FIG_SCAP: 'fig.scap';
FIG_LP: 'fig.lp';
FIG_SUBCAP: 'fig.subcap';
FIG_POS: 'fig.pos';
OUT_WIDTH: 'out.width';
OUT_HEIGHT: 'out.height';
OUT_EXTRA: 'out.extra';
WARNING: 'warning';
ERROR: 'error';
MESSAGE: 'message';
RENDER: 'render';
REF_LABEL: 'ref.label';
CHILD: 'child';
ENGINE: 'engine';
SPLIT: 'split';
INCLUDE: 'include';

//UNSUPPORTED OPTIONS
TIDY: 'tidy';
TIDY_OPTS: 'tidy.opts';
HIGHLIGHT: 'highlight';
STRIP_WHITE: 'strip.white';
SIZE: 'size';
BACKGROUND: 'background';
CLASS_SOURCE: 'class.source';
ATTR_SOURCE: 'attr.source';
//Cache Options
CACHE: 'cache';
CACHE_PATH: 'cache.path';
CACHE_VARS: 'cache.vars';
CACHE_LAZY: 'cache.lazy';
DEPENDSON: 'dependson';
AUTODEP: 'autodep';
CACHE_REBUILD: 'cache.rebuild';
FIG_RETINA: 'fig.retina';
EXTERNAL: 'external';
SANITIZE: 'sanitize';

RESIZE_WIDTH: 'resize.width';
RESIZE_HEIGHT: 'resize.height';
FIG_DIM: 'fig.dim';
//Animation
INTERVAL: 'interval';
ANIOPTS: 'aniopts';
ANIMATION_HOOK: 'animation.hook';
FFMPEG_BITRATE: 'ffmpeg.bitrate';
FFMPEG_FORMAT: 'ffmpeg.format';
PURL: 'purl';*/


//mode IN_YAML;
//NL: '\r'? '\n';
//COLON: ':';
//DELIM: WS WS;
//ID  :   '.' (LETTER|'_'|'.') (LETTER|DIGIT|'_'|'.')*
//    |   LETTER (LETTER|DIGIT|'_'|'.')*
//    ;
//fragment LETTER  : [a-zA-Z] ;
//YAML_END: '---' (NL|EOF) -> popMode;




////2020-07-16 CG:  Code deleted from CodeArgs.
//OPTION_KEY  :     {_input.LA(1) == '='}? ID;
//OPTION_VALUE:   INT
//                |   FLOAT
//                |   BOOL
//                |   STRING
//                |   ID
//                ;
//
//OPTION_OTHER:   [ ,]+? -> skip;
//CODE_ARG: WS* ID WS* EQ_CHAR WS* (ID|STRING|INT|FLOAT|BOOL) WS* COMMA |
//             WS* ID WS* EQ_CHAR WS* (ID|STRING|INT|FLOAT|BOOL) WS*
//             ;
//{_input.LA(-1) == '=' && _input.LA(1) == ','}?
////ode ARG_VALUE;
//OPTION_VALUE:     {_input.LA(1) == ',' | '}'}? (ID|STRING|BOOL|FLOAT|INT);// -> popMode;
////OPTION_VALUE:    {_input.LA(-1) == '=' && _input.LA(1) == ','}? WS* (INT|FLOAT|BOOL|STRING|ID);
////{_input.LA(1) == (','||'\}'};