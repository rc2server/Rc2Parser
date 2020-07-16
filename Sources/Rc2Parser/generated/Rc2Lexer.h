
// Generated from /home/thread-0/Desktop/rc2-development/Rc2Parser/Rc2Lexer.g4 by ANTLR 4.8

#pragma once


#include "antlr4-runtime.h"




class  Rc2Lexer : public antlr4::Lexer {
public:
  enum {
    CODE_START = 1, CODE_ARGS_START = 2, EQ_START = 3, IEQ_START = 4, IC_START = 5, 
    MDOWN = 6, WS = 7, NL = 8, EQ_CHAR = 9, COMMA = 10, HEX = 11, INT = 12, 
    FLOAT = 13, COMPLEX = 14, PLUS = 15, MINUS = 16, BOOL = 17, STRING = 18, 
    ID = 19, CODE_ARGS_END = 20, IC_CODE = 21, IC_END = 22, EQ_CODE = 23, 
    EQ_END = 24, IEQ_CODE = 25, IEQ_END = 26, CODE = 27, NOT_BACKTICK = 28, 
    CODE_END = 29
  };

  enum {
    CODE_ARGS = 1, IN_ICODE = 2, IN_EQ = 3, IN_IN_EQ = 4, IN_CODE = 5
  };

  Rc2Lexer(antlr4::CharStream *input);
  ~Rc2Lexer();

  virtual std::string getGrammarFileName() const override;
  virtual const std::vector<std::string>& getRuleNames() const override;

  virtual const std::vector<std::string>& getChannelNames() const override;
  virtual const std::vector<std::string>& getModeNames() const override;
  virtual const std::vector<std::string>& getTokenNames() const override; // deprecated, use vocabulary instead
  virtual antlr4::dfa::Vocabulary& getVocabulary() const override;

  virtual const std::vector<uint16_t> getSerializedATN() const override;
  virtual const antlr4::atn::ATN& getATN() const override;

  virtual bool sempred(antlr4::RuleContext *_localctx, size_t ruleIndex, size_t predicateIndex) override;

private:
  static std::vector<antlr4::dfa::DFA> _decisionToDFA;
  static antlr4::atn::PredictionContextCache _sharedContextCache;
  static std::vector<std::string> _ruleNames;
  static std::vector<std::string> _tokenNames;
  static std::vector<std::string> _channelNames;
  static std::vector<std::string> _modeNames;

  static std::vector<std::string> _literalNames;
  static std::vector<std::string> _symbolicNames;
  static antlr4::dfa::Vocabulary _vocabulary;
  static antlr4::atn::ATN _atn;
  static std::vector<uint16_t> _serializedATN;


      #include "../LexerHelpers.hpp"


  // Individual action functions triggered by action() above.

  // Individual semantic predicate functions triggered by sempred() above.
  bool CODE_STARTSempred(antlr4::RuleContext *_localctx, size_t predicateIndex);
  bool EQ_STARTSempred(antlr4::RuleContext *_localctx, size_t predicateIndex);
  bool IEQ_STARTSempred(antlr4::RuleContext *_localctx, size_t predicateIndex);
  bool CODE_ENDSempred(antlr4::RuleContext *_localctx, size_t predicateIndex);

  struct Initializer {
    Initializer();
  };
  static Initializer _init;
};

