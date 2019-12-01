parser grammar Rc2RawParser;
options { tokenVocab=Rc2Lexer; }

document: chunk* EOF;

chunk: code | equation | inlineCode | inlineEQ | mdown;

mdown: MDOWN+;

code: CODE_START CODE_ARG CODE CODE_END;

inlineCode: IC_START IC_CODE IC_END;

inlineEQ: IEQ_START IEQ_CODE IEQ_END;

equation: EQ_START EQ_CODE EQ_END;
