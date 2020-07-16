
// Generated from /home/thread-0/Desktop/rc2-development/Rc2Parser/Rc2RawParser.g4 by ANTLR 4.8

#pragma once


#include "antlr4-runtime.h"




class  Rc2RawParser : public antlr4::Parser {
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
    RuleDocument = 0, RuleChunk = 1, RuleYaml = 2, RuleMdown = 3, RuleCode = 4, 
    RuleCodeArg = 5, RuleInlineCode = 6, RuleInlineEQ = 7, RuleEquation = 8
  };

  Rc2RawParser(antlr4::TokenStream *input);
  ~Rc2RawParser();

  virtual std::string getGrammarFileName() const override;
  virtual const antlr4::atn::ATN& getATN() const override { return _atn; };
  virtual const std::vector<std::string>& getTokenNames() const override { return _tokenNames; }; // deprecated: use vocabulary instead.
  virtual const std::vector<std::string>& getRuleNames() const override;
  virtual antlr4::dfa::Vocabulary& getVocabulary() const override;


  class DocumentContext;
  class ChunkContext;
  class YamlContext;
  class MdownContext;
  class CodeContext;
  class CodeArgContext;
  class InlineCodeContext;
  class InlineEQContext;
  class EquationContext; 

  class  DocumentContext : public antlr4::ParserRuleContext {
  public:
    DocumentContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *EOF();
    std::vector<ChunkContext *> chunk();
    ChunkContext* chunk(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual antlrcpp::Any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  DocumentContext* document();

  class  ChunkContext : public antlr4::ParserRuleContext {
  public:
    ChunkContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    YamlContext *yaml();
    CodeContext *code();
    EquationContext *equation();
    InlineCodeContext *inlineCode();
    InlineEQContext *inlineEQ();
    MdownContext *mdown();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual antlrcpp::Any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ChunkContext* chunk();

  class  YamlContext : public antlr4::ParserRuleContext {
  public:
    YamlContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *YAML_START();
    antlr4::tree::TerminalNode *YAML_END();
    std::vector<antlr4::tree::TerminalNode *> YAML();
    antlr4::tree::TerminalNode* YAML(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual antlrcpp::Any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  YamlContext* yaml();

  class  MdownContext : public antlr4::ParserRuleContext {
  public:
    MdownContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<antlr4::tree::TerminalNode *> MDOWN();
    antlr4::tree::TerminalNode* MDOWN(size_t i);
    std::vector<antlr4::tree::TerminalNode *> WS();
    antlr4::tree::TerminalNode* WS(size_t i);
    std::vector<antlr4::tree::TerminalNode *> NL();
    antlr4::tree::TerminalNode* NL(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual antlrcpp::Any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MdownContext* mdown();

  class  CodeContext : public antlr4::ParserRuleContext {
  public:
    CodeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *CODE_START();
    antlr4::tree::TerminalNode *CODE_ARGS_START();
    antlr4::tree::TerminalNode *CODE_ARGS_END();
    antlr4::tree::TerminalNode *CODE();
    antlr4::tree::TerminalNode *CODE_END();
    std::vector<CodeArgContext *> codeArg();
    CodeArgContext* codeArg(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual antlrcpp::Any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  CodeContext* code();

  class  CodeArgContext : public antlr4::ParserRuleContext {
  public:
    CodeArgContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<antlr4::tree::TerminalNode *> ID();
    antlr4::tree::TerminalNode* ID(size_t i);
    antlr4::tree::TerminalNode *EQ_CHAR();
    antlr4::tree::TerminalNode *INT();
    antlr4::tree::TerminalNode *FLOAT();
    antlr4::tree::TerminalNode *BOOL();
    antlr4::tree::TerminalNode *STRING();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual antlrcpp::Any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  CodeArgContext* codeArg();

  class  InlineCodeContext : public antlr4::ParserRuleContext {
  public:
    InlineCodeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *IC_START();
    antlr4::tree::TerminalNode *IC_CODE();
    antlr4::tree::TerminalNode *IC_END();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual antlrcpp::Any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InlineCodeContext* inlineCode();

  class  InlineEQContext : public antlr4::ParserRuleContext {
  public:
    InlineEQContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *IEQ_START();
    antlr4::tree::TerminalNode *IEQ_CODE();
    antlr4::tree::TerminalNode *IEQ_END();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual antlrcpp::Any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InlineEQContext* inlineEQ();

  class  EquationContext : public antlr4::ParserRuleContext {
  public:
    EquationContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *EQ_START();
    antlr4::tree::TerminalNode *EQ_CODE();
    antlr4::tree::TerminalNode *EQ_END();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual antlrcpp::Any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  EquationContext* equation();


private:
  static std::vector<antlr4::dfa::DFA> _decisionToDFA;
  static antlr4::atn::PredictionContextCache _sharedContextCache;
  static std::vector<std::string> _ruleNames;
  static std::vector<std::string> _tokenNames;

  static std::vector<std::string> _literalNames;
  static std::vector<std::string> _symbolicNames;
  static antlr4::dfa::Vocabulary _vocabulary;
  static antlr4::atn::ATN _atn;
  static std::vector<uint16_t> _serializedATN;


  struct Initializer {
    Initializer();
  };
  static Initializer _init;
};

