parser grammar TestParser;
options { tokenVocab=TestLexer; }

document            :   chunk* EOF;

chunk               :   markdown | code  | yaml | equation;

markdown            :   mdown | inlineCode | inlineEQ;

code                :   CODE_DELIM codeOpts contents+? CODE_DELIM;

codeOpts            :   CODE_OPTS_START contents CODE_OPTS_END;

equation            :   EQ_DELIM contents* EQ_DELIM;

yaml                :   YAML_DELIM contents* YAML_DELIM;

mdown               :   contents+;

inlineCode          :   ICODE_START contents* ICODE_END;

inlineEQ            :   IEQ_DELIM contents* IEQ_DELIM;

contents            :   (TEXT|WS|NL|CODE_OPTS_END|CODE_OPTS_START)+?;

//
//document            :   chunk* EOF;
//
//chunk               :   yaml | code | equation | inlineCode | inlineEQ | mdown;
//
////chunk               :   code | equation | inlineCode | inlineEQ | mdown;
//
////Commented out is an alternate way. (CG 2020-07-16)
////yaml                :   YAML;
//yaml                :   YAML_START YAML* YAML_END;
//
//mdown               :   (MDOWN|WS|NL)+;
//
//code                :   CODE_START CODE_ARGS_START codeArg* CODE_ARGS_END CODE CODE_END;
//
//codeArg             :   ID '=' (INT|FLOAT|BOOL|STRING|ID)
//                    |   ID
//                    ;
//
//inlineCode          :   IC_START IC_CODE IC_END;
//
//inlineEQ            :   IEQ_START IEQ_CODE IEQ_END;
//
//equation            :   EQ_START EQ_CODE EQ_END;

// yaml: YAML_START NL keyValuePairs* YAML_END;

//keyValuePairs
//            :       DELIM*? key COLON NL DELIM+ (keyValuePairs)+? NL
//            |       DELIM*? key COLON WS? value NL
//            |       DELIM*? key COLON WS? value
//
//            ;
//
//key
//            :       ID
//            //|       MDOWN+
//            ;
//
//value
//            :       INT
//            |       HEX
//            |       FLOAT
//            |       COMPLEX
//            |       STRING
//            |       ID
//            ;

//codeOptions
//            :       CODE_OPTIONS_START optionArgs*? CODE_OPTIONS_END
//            ;
//
//optionArgs
//            :       WS? optionName WS? EQ_CHAR WS? optionArg COMMA
//            |       WS? optionName WS? EQ_CHAR WS? optionArg
//            ;

//optionName
//            :       character
//            ;
//            :       supported
//            |       unsupported
//            ;

//optionArg
//            :       number
//            |       bool
//            |       character
//            ;
//
//number
//            :       INT
//            |       FLOAT
//            |       HEX
//            |       COMPLEX
//            ;
//bool
//            :       TRUE
//            |       FALSE
//            ;
//character
//            :       STRING
//            |       ID
//            ;
//
//supported       :       EVAL |  ECHO |  RESULTS | COLLAPSE |  PROMPT |  COMMENTS
//                |       FIG_KEEP | FIG_SHOW |  FIG_ALIGN |  FIG_PATH
//                |       DEV |  DEV_ARGS |  DPI |  FIG_EXT |  FIG_WIDTH | FIG_HEIGHT
//                |       FIG_ENV |  FIG_CAP |  FIG_SCAP |  FIG_LP |  FIG_SUBCAP
//                |       FIG_POS | OUT_WIDTH |  OUT_HEIGHT |  OUT_EXTRA
//                |       WARNING |  ERROR |  MESSAGE |  RENDER |  REF_LABEL
//                |       CHILD |  ENGINE | SPLIT | INCLUDE
//                ;
//
//unsupported     :       TIDY | TIDY_OPTS | HIGHLIGHT | STRIP_WHITE
//                |       SIZE | BACKGROUND | CLASS_SOURCE | ATTR_SOURCE | CACHE
//                |       CACHE_PATH | CACHE_VARS | CACHE_LAZY | DEPENDSON
//                |       AUTODEP | CACHE_REBUILD | FIG_RETINA | EXTERNAL
//                |       SANITIZE | RESIZE_WIDTH | RESIZE_HEIGHT | FIG_DIM
//                |       INTERVAL | ANIOPTS | ANIMATION_HOOK | FFMPEG_BITRATE
//                |       FFMPEG_FORMAT | PURL
//                ;





///// random deleted stuff that may be useful.
//codeArg: OPTION_KEY '=' OPTION_VALUE;
//codeOptions:  OPTION_KEY EQ_CHAR OPTION_VALUE; // => OPTION_KEY OPTION_VALUE;

// yaml: YAML_START NL keyValuePairs* YAML_END;

//keyValuePairs
//            :       DELIM*? key COLON NL DELIM+ (keyValuePairs)+? NL
//            |       DELIM*? key COLON WS? value NL
//            |       DELIM*? key COLON WS? value
//
//            ;
//
//key
//            :       ID
//            //|       MDOWN+
//            ;
//
//value
//            :       INT
//            |       HEX
//            |       FLOAT
//            |       COMPLEX
//            |       STRING
//            |       ID
//            ;

//codeOptions
//            :       CODE_OPTIONS_START optionArgs*? CODE_OPTIONS_END
//            ;
//
//optionArgs
//            :       WS? optionName WS? EQ_CHAR WS? optionArg COMMA
//            |       WS? optionName WS? EQ_CHAR WS? optionArg
//            ;

//optionName
//            :       character
//            ;
//            :       supported
//            |       unsupported
//            ;

//optionArg
//            :       number
//            |       bool
//            |       character
//            ;
//
//number
//            :       INT
//            |       FLOAT
//            |       HEX
//            |       COMPLEX
//            ;
//bool
//            :       TRUE
//            |       FALSE
//            ;
//character
//            :       STRING
//            |       ID
//            ;
//
//supported       :       EVAL |  ECHO |  RESULTS | COLLAPSE |  PROMPT |  COMMENTS
//                |       FIG_KEEP | FIG_SHOW |  FIG_ALIGN |  FIG_PATH
//                |       DEV |  DEV_ARGS |  DPI |  FIG_EXT |  FIG_WIDTH | FIG_HEIGHT
//                |       FIG_ENV |  FIG_CAP |  FIG_SCAP |  FIG_LP |  FIG_SUBCAP
//                |       FIG_POS | OUT_WIDTH |  OUT_HEIGHT |  OUT_EXTRA
//                |       WARNING |  ERROR |  MESSAGE |  RENDER |  REF_LABEL
//                |       CHILD |  ENGINE | SPLIT | INCLUDE
//                ;
//
//unsupported     :       TIDY | TIDY_OPTS | HIGHLIGHT | STRIP_WHITE
//                |       SIZE | BACKGROUND | CLASS_SOURCE | ATTR_SOURCE | CACHE
//                |       CACHE_PATH | CACHE_VARS | CACHE_LAZY | DEPENDSON
//                |       AUTODEP | CACHE_REBUILD | FIG_RETINA | EXTERNAL
//                |       SANITIZE | RESIZE_WIDTH | RESIZE_HEIGHT | FIG_DIM
//                |       INTERVAL | ANIOPTS | ANIMATION_HOOK | FFMPEG_BITRATE
//                |       FFMPEG_FORMAT | PURL
//                ;





///// random deleted stuff that may be useful.
//codeArg: OPTION_KEY '=' OPTION_VALUE;
//codeOptions:  OPTION_KEY EQ_CHAR OPTION_VALUE; // => OPTION_KEY OPTION_VALUE;