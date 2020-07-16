
// Generated from /home/thread-0/Desktop/rc2-development/Rc2Parser/Rc2Lexer.g4 by ANTLR 4.8

#pragma once


#include "antlr4-runtime.h"




class  Rc2Lexer : public antlr4::Lexer {
public:
  enum {
    YAML_START = 1, CODE_START = 2, CODE_ARGS_START = 3, EQ_START = 4, IEQ_START = 5, 
    IC_START = 6, MDOWN = 7, YAML = 8, YAML_END = 9, WS = 10, NL = 11, EQ_CHAR = 12, 
    COMMA = 13, HEX = 14, INT = 15, FLOAT = 16, COMPLEX = 17, PLUS = 18, 
    MINUS = 19, BOOL = 20, STRING = 21, ID = 22, CODE_ARGS_END = 23, IC_CODE = 24, 
    IC_END = 25, EQ_CODE = 26, EQ_END = 27, IEQ_CODE = 28, IEQ_END = 29, 
    CODE = 30, NOT_BACKTICK = 31, CODE_END = 32
  };

  enum {
    IN_YAML = 1, CODE_ARGS = 2, IN_ICODE = 3, IN_EQ = 4, IN_IN_EQ = 5, IN_CODE = 6
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

