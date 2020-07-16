
// Generated from /home/thread-0/Desktop/rc2-development/Rc2Parser/Rc2RawParser.g4 by ANTLR 4.8


#include "Rc2RawParserListener.h"
#include "Rc2RawParserVisitor.h"

#include "Rc2RawParser.h"


using namespace antlrcpp;
using namespace antlr4;

Rc2RawParser::Rc2RawParser(TokenStream *input) : Parser(input) {
  _interpreter = new atn::ParserATNSimulator(this, _atn, _decisionToDFA, _sharedContextCache);
}

Rc2RawParser::~Rc2RawParser() {
  delete _interpreter;
}

std::string Rc2RawParser::getGrammarFileName() const {
  return "Rc2RawParser.g4";
}

const std::vector<std::string>& Rc2RawParser::getRuleNames() const {
  return _ruleNames;
}

dfa::Vocabulary& Rc2RawParser::getVocabulary() const {
  return _vocabulary;
}


//----------------- DocumentContext ------------------------------------------------------------------

Rc2RawParser::DocumentContext::DocumentContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* Rc2RawParser::DocumentContext::EOF() {
  return getToken(Rc2RawParser::EOF, 0);
}

std::vector<Rc2RawParser::ChunkContext *> Rc2RawParser::DocumentContext::chunk() {
  return getRuleContexts<Rc2RawParser::ChunkContext>();
}

Rc2RawParser::ChunkContext* Rc2RawParser::DocumentContext::chunk(size_t i) {
  return getRuleContext<Rc2RawParser::ChunkContext>(i);
}


size_t Rc2RawParser::DocumentContext::getRuleIndex() const {
  return Rc2RawParser::RuleDocument;
}

void Rc2RawParser::DocumentContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterDocument(this);
}

void Rc2RawParser::DocumentContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitDocument(this);
}


antlrcpp::Any Rc2RawParser::DocumentContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<Rc2RawParserVisitor*>(visitor))
    return parserVisitor->visitDocument(this);
  else
    return visitor->visitChildren(this);
}

Rc2RawParser::DocumentContext* Rc2RawParser::document() {
  DocumentContext *_localctx = _tracker.createInstance<DocumentContext>(_ctx, getState());
  enterRule(_localctx, 0, Rc2RawParser::RuleDocument);
  size_t _la = 0;

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(21);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << Rc2RawParser::YAML_START)
      | (1ULL << Rc2RawParser::CODE_START)
      | (1ULL << Rc2RawParser::EQ_START)
      | (1ULL << Rc2RawParser::IEQ_START)
      | (1ULL << Rc2RawParser::IC_START)
      | (1ULL << Rc2RawParser::MDOWN)
      | (1ULL << Rc2RawParser::WS)
      | (1ULL << Rc2RawParser::NL))) != 0)) {
      setState(18);
      chunk();
      setState(23);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(24);
    match(Rc2RawParser::EOF);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ChunkContext ------------------------------------------------------------------

Rc2RawParser::ChunkContext::ChunkContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

Rc2RawParser::YamlContext* Rc2RawParser::ChunkContext::yaml() {
  return getRuleContext<Rc2RawParser::YamlContext>(0);
}

Rc2RawParser::CodeContext* Rc2RawParser::ChunkContext::code() {
  return getRuleContext<Rc2RawParser::CodeContext>(0);
}

Rc2RawParser::EquationContext* Rc2RawParser::ChunkContext::equation() {
  return getRuleContext<Rc2RawParser::EquationContext>(0);
}

Rc2RawParser::InlineCodeContext* Rc2RawParser::ChunkContext::inlineCode() {
  return getRuleContext<Rc2RawParser::InlineCodeContext>(0);
}

Rc2RawParser::InlineEQContext* Rc2RawParser::ChunkContext::inlineEQ() {
  return getRuleContext<Rc2RawParser::InlineEQContext>(0);
}

Rc2RawParser::MdownContext* Rc2RawParser::ChunkContext::mdown() {
  return getRuleContext<Rc2RawParser::MdownContext>(0);
}


size_t Rc2RawParser::ChunkContext::getRuleIndex() const {
  return Rc2RawParser::RuleChunk;
}

void Rc2RawParser::ChunkContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterChunk(this);
}

void Rc2RawParser::ChunkContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitChunk(this);
}


antlrcpp::Any Rc2RawParser::ChunkContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<Rc2RawParserVisitor*>(visitor))
    return parserVisitor->visitChunk(this);
  else
    return visitor->visitChildren(this);
}

Rc2RawParser::ChunkContext* Rc2RawParser::chunk() {
  ChunkContext *_localctx = _tracker.createInstance<ChunkContext>(_ctx, getState());
  enterRule(_localctx, 2, Rc2RawParser::RuleChunk);

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    setState(32);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case Rc2RawParser::YAML_START: {
        enterOuterAlt(_localctx, 1);
        setState(26);
        yaml();
        break;
      }

      case Rc2RawParser::CODE_START: {
        enterOuterAlt(_localctx, 2);
        setState(27);
        code();
        break;
      }

      case Rc2RawParser::EQ_START: {
        enterOuterAlt(_localctx, 3);
        setState(28);
        equation();
        break;
      }

      case Rc2RawParser::IC_START: {
        enterOuterAlt(_localctx, 4);
        setState(29);
        inlineCode();
        break;
      }

      case Rc2RawParser::IEQ_START: {
        enterOuterAlt(_localctx, 5);
        setState(30);
        inlineEQ();
        break;
      }

      case Rc2RawParser::MDOWN:
      case Rc2RawParser::WS:
      case Rc2RawParser::NL: {
        enterOuterAlt(_localctx, 6);
        setState(31);
        mdown();
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- YamlContext ------------------------------------------------------------------

Rc2RawParser::YamlContext::YamlContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* Rc2RawParser::YamlContext::YAML_START() {
  return getToken(Rc2RawParser::YAML_START, 0);
}

tree::TerminalNode* Rc2RawParser::YamlContext::YAML_END() {
  return getToken(Rc2RawParser::YAML_END, 0);
}

std::vector<tree::TerminalNode *> Rc2RawParser::YamlContext::YAML() {
  return getTokens(Rc2RawParser::YAML);
}

tree::TerminalNode* Rc2RawParser::YamlContext::YAML(size_t i) {
  return getToken(Rc2RawParser::YAML, i);
}


size_t Rc2RawParser::YamlContext::getRuleIndex() const {
  return Rc2RawParser::RuleYaml;
}

void Rc2RawParser::YamlContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterYaml(this);
}

void Rc2RawParser::YamlContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitYaml(this);
}


antlrcpp::Any Rc2RawParser::YamlContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<Rc2RawParserVisitor*>(visitor))
    return parserVisitor->visitYaml(this);
  else
    return visitor->visitChildren(this);
}

Rc2RawParser::YamlContext* Rc2RawParser::yaml() {
  YamlContext *_localctx = _tracker.createInstance<YamlContext>(_ctx, getState());
  enterRule(_localctx, 4, Rc2RawParser::RuleYaml);
  size_t _la = 0;

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(34);
    match(Rc2RawParser::YAML_START);
    setState(38);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == Rc2RawParser::YAML) {
      setState(35);
      match(Rc2RawParser::YAML);
      setState(40);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(41);
    match(Rc2RawParser::YAML_END);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- MdownContext ------------------------------------------------------------------

Rc2RawParser::MdownContext::MdownContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<tree::TerminalNode *> Rc2RawParser::MdownContext::MDOWN() {
  return getTokens(Rc2RawParser::MDOWN);
}

tree::TerminalNode* Rc2RawParser::MdownContext::MDOWN(size_t i) {
  return getToken(Rc2RawParser::MDOWN, i);
}

std::vector<tree::TerminalNode *> Rc2RawParser::MdownContext::WS() {
  return getTokens(Rc2RawParser::WS);
}

tree::TerminalNode* Rc2RawParser::MdownContext::WS(size_t i) {
  return getToken(Rc2RawParser::WS, i);
}

std::vector<tree::TerminalNode *> Rc2RawParser::MdownContext::NL() {
  return getTokens(Rc2RawParser::NL);
}

tree::TerminalNode* Rc2RawParser::MdownContext::NL(size_t i) {
  return getToken(Rc2RawParser::NL, i);
}


size_t Rc2RawParser::MdownContext::getRuleIndex() const {
  return Rc2RawParser::RuleMdown;
}

void Rc2RawParser::MdownContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterMdown(this);
}

void Rc2RawParser::MdownContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitMdown(this);
}


antlrcpp::Any Rc2RawParser::MdownContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<Rc2RawParserVisitor*>(visitor))
    return parserVisitor->visitMdown(this);
  else
    return visitor->visitChildren(this);
}

Rc2RawParser::MdownContext* Rc2RawParser::mdown() {
  MdownContext *_localctx = _tracker.createInstance<MdownContext>(_ctx, getState());
  enterRule(_localctx, 6, Rc2RawParser::RuleMdown);
  size_t _la = 0;

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    size_t alt;
    enterOuterAlt(_localctx, 1);
    setState(44); 
    _errHandler->sync(this);
    alt = 1;
    do {
      switch (alt) {
        case 1: {
              setState(43);
              _la = _input->LA(1);
              if (!((((_la & ~ 0x3fULL) == 0) &&
                ((1ULL << _la) & ((1ULL << Rc2RawParser::MDOWN)
                | (1ULL << Rc2RawParser::WS)
                | (1ULL << Rc2RawParser::NL))) != 0))) {
              _errHandler->recoverInline(this);
              }
              else {
                _errHandler->reportMatch(this);
                consume();
              }
              break;
            }

      default:
        throw NoViableAltException(this);
      }
      setState(46); 
      _errHandler->sync(this);
      alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 3, _ctx);
    } while (alt != 2 && alt != atn::ATN::INVALID_ALT_NUMBER);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- CodeContext ------------------------------------------------------------------

Rc2RawParser::CodeContext::CodeContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* Rc2RawParser::CodeContext::CODE_START() {
  return getToken(Rc2RawParser::CODE_START, 0);
}

tree::TerminalNode* Rc2RawParser::CodeContext::CODE_ARGS_START() {
  return getToken(Rc2RawParser::CODE_ARGS_START, 0);
}

tree::TerminalNode* Rc2RawParser::CodeContext::CODE_ARGS_END() {
  return getToken(Rc2RawParser::CODE_ARGS_END, 0);
}

tree::TerminalNode* Rc2RawParser::CodeContext::CODE() {
  return getToken(Rc2RawParser::CODE, 0);
}

tree::TerminalNode* Rc2RawParser::CodeContext::CODE_END() {
  return getToken(Rc2RawParser::CODE_END, 0);
}

std::vector<Rc2RawParser::CodeArgContext *> Rc2RawParser::CodeContext::codeArg() {
  return getRuleContexts<Rc2RawParser::CodeArgContext>();
}

Rc2RawParser::CodeArgContext* Rc2RawParser::CodeContext::codeArg(size_t i) {
  return getRuleContext<Rc2RawParser::CodeArgContext>(i);
}


size_t Rc2RawParser::CodeContext::getRuleIndex() const {
  return Rc2RawParser::RuleCode;
}

void Rc2RawParser::CodeContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterCode(this);
}

void Rc2RawParser::CodeContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitCode(this);
}


antlrcpp::Any Rc2RawParser::CodeContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<Rc2RawParserVisitor*>(visitor))
    return parserVisitor->visitCode(this);
  else
    return visitor->visitChildren(this);
}

Rc2RawParser::CodeContext* Rc2RawParser::code() {
  CodeContext *_localctx = _tracker.createInstance<CodeContext>(_ctx, getState());
  enterRule(_localctx, 8, Rc2RawParser::RuleCode);
  size_t _la = 0;

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(48);
    match(Rc2RawParser::CODE_START);
    setState(49);
    match(Rc2RawParser::CODE_ARGS_START);
    setState(53);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == Rc2RawParser::ID) {
      setState(50);
      codeArg();
      setState(55);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(56);
    match(Rc2RawParser::CODE_ARGS_END);
    setState(57);
    match(Rc2RawParser::CODE);
    setState(58);
    match(Rc2RawParser::CODE_END);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- CodeArgContext ------------------------------------------------------------------

Rc2RawParser::CodeArgContext::CodeArgContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<tree::TerminalNode *> Rc2RawParser::CodeArgContext::ID() {
  return getTokens(Rc2RawParser::ID);
}

tree::TerminalNode* Rc2RawParser::CodeArgContext::ID(size_t i) {
  return getToken(Rc2RawParser::ID, i);
}

tree::TerminalNode* Rc2RawParser::CodeArgContext::EQ_CHAR() {
  return getToken(Rc2RawParser::EQ_CHAR, 0);
}

tree::TerminalNode* Rc2RawParser::CodeArgContext::INT() {
  return getToken(Rc2RawParser::INT, 0);
}

tree::TerminalNode* Rc2RawParser::CodeArgContext::FLOAT() {
  return getToken(Rc2RawParser::FLOAT, 0);
}

tree::TerminalNode* Rc2RawParser::CodeArgContext::BOOL() {
  return getToken(Rc2RawParser::BOOL, 0);
}

tree::TerminalNode* Rc2RawParser::CodeArgContext::STRING() {
  return getToken(Rc2RawParser::STRING, 0);
}


size_t Rc2RawParser::CodeArgContext::getRuleIndex() const {
  return Rc2RawParser::RuleCodeArg;
}

void Rc2RawParser::CodeArgContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterCodeArg(this);
}

void Rc2RawParser::CodeArgContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitCodeArg(this);
}


antlrcpp::Any Rc2RawParser::CodeArgContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<Rc2RawParserVisitor*>(visitor))
    return parserVisitor->visitCodeArg(this);
  else
    return visitor->visitChildren(this);
}

Rc2RawParser::CodeArgContext* Rc2RawParser::codeArg() {
  CodeArgContext *_localctx = _tracker.createInstance<CodeArgContext>(_ctx, getState());
  enterRule(_localctx, 10, Rc2RawParser::RuleCodeArg);
  size_t _la = 0;

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    setState(64);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 5, _ctx)) {
    case 1: {
      enterOuterAlt(_localctx, 1);
      setState(60);
      match(Rc2RawParser::ID);
      setState(61);
      match(Rc2RawParser::EQ_CHAR);
      setState(62);
      _la = _input->LA(1);
      if (!((((_la & ~ 0x3fULL) == 0) &&
        ((1ULL << _la) & ((1ULL << Rc2RawParser::INT)
        | (1ULL << Rc2RawParser::FLOAT)
        | (1ULL << Rc2RawParser::BOOL)
        | (1ULL << Rc2RawParser::STRING)
        | (1ULL << Rc2RawParser::ID))) != 0))) {
      _errHandler->recoverInline(this);
      }
      else {
        _errHandler->reportMatch(this);
        consume();
      }
      break;
    }

    case 2: {
      enterOuterAlt(_localctx, 2);
      setState(63);
      match(Rc2RawParser::ID);
      break;
    }

    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- InlineCodeContext ------------------------------------------------------------------

Rc2RawParser::InlineCodeContext::InlineCodeContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* Rc2RawParser::InlineCodeContext::IC_START() {
  return getToken(Rc2RawParser::IC_START, 0);
}

tree::TerminalNode* Rc2RawParser::InlineCodeContext::IC_CODE() {
  return getToken(Rc2RawParser::IC_CODE, 0);
}

tree::TerminalNode* Rc2RawParser::InlineCodeContext::IC_END() {
  return getToken(Rc2RawParser::IC_END, 0);
}


size_t Rc2RawParser::InlineCodeContext::getRuleIndex() const {
  return Rc2RawParser::RuleInlineCode;
}

void Rc2RawParser::InlineCodeContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterInlineCode(this);
}

void Rc2RawParser::InlineCodeContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitInlineCode(this);
}


antlrcpp::Any Rc2RawParser::InlineCodeContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<Rc2RawParserVisitor*>(visitor))
    return parserVisitor->visitInlineCode(this);
  else
    return visitor->visitChildren(this);
}

Rc2RawParser::InlineCodeContext* Rc2RawParser::inlineCode() {
  InlineCodeContext *_localctx = _tracker.createInstance<InlineCodeContext>(_ctx, getState());
  enterRule(_localctx, 12, Rc2RawParser::RuleInlineCode);

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(66);
    match(Rc2RawParser::IC_START);
    setState(67);
    match(Rc2RawParser::IC_CODE);
    setState(68);
    match(Rc2RawParser::IC_END);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- InlineEQContext ------------------------------------------------------------------

Rc2RawParser::InlineEQContext::InlineEQContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* Rc2RawParser::InlineEQContext::IEQ_START() {
  return getToken(Rc2RawParser::IEQ_START, 0);
}

tree::TerminalNode* Rc2RawParser::InlineEQContext::IEQ_CODE() {
  return getToken(Rc2RawParser::IEQ_CODE, 0);
}

tree::TerminalNode* Rc2RawParser::InlineEQContext::IEQ_END() {
  return getToken(Rc2RawParser::IEQ_END, 0);
}


size_t Rc2RawParser::InlineEQContext::getRuleIndex() const {
  return Rc2RawParser::RuleInlineEQ;
}

void Rc2RawParser::InlineEQContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterInlineEQ(this);
}

void Rc2RawParser::InlineEQContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitInlineEQ(this);
}


antlrcpp::Any Rc2RawParser::InlineEQContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<Rc2RawParserVisitor*>(visitor))
    return parserVisitor->visitInlineEQ(this);
  else
    return visitor->visitChildren(this);
}

Rc2RawParser::InlineEQContext* Rc2RawParser::inlineEQ() {
  InlineEQContext *_localctx = _tracker.createInstance<InlineEQContext>(_ctx, getState());
  enterRule(_localctx, 14, Rc2RawParser::RuleInlineEQ);

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(70);
    match(Rc2RawParser::IEQ_START);
    setState(71);
    match(Rc2RawParser::IEQ_CODE);
    setState(72);
    match(Rc2RawParser::IEQ_END);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- EquationContext ------------------------------------------------------------------

Rc2RawParser::EquationContext::EquationContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* Rc2RawParser::EquationContext::EQ_START() {
  return getToken(Rc2RawParser::EQ_START, 0);
}

tree::TerminalNode* Rc2RawParser::EquationContext::EQ_CODE() {
  return getToken(Rc2RawParser::EQ_CODE, 0);
}

tree::TerminalNode* Rc2RawParser::EquationContext::EQ_END() {
  return getToken(Rc2RawParser::EQ_END, 0);
}


size_t Rc2RawParser::EquationContext::getRuleIndex() const {
  return Rc2RawParser::RuleEquation;
}

void Rc2RawParser::EquationContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterEquation(this);
}

void Rc2RawParser::EquationContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<Rc2RawParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitEquation(this);
}


antlrcpp::Any Rc2RawParser::EquationContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<Rc2RawParserVisitor*>(visitor))
    return parserVisitor->visitEquation(this);
  else
    return visitor->visitChildren(this);
}

Rc2RawParser::EquationContext* Rc2RawParser::equation() {
  EquationContext *_localctx = _tracker.createInstance<EquationContext>(_ctx, getState());
  enterRule(_localctx, 16, Rc2RawParser::RuleEquation);

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(74);
    match(Rc2RawParser::EQ_START);
    setState(75);
    match(Rc2RawParser::EQ_CODE);
    setState(76);
    match(Rc2RawParser::EQ_END);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

// Static vars and initialization.
std::vector<dfa::DFA> Rc2RawParser::_decisionToDFA;
atn::PredictionContextCache Rc2RawParser::_sharedContextCache;

// We own the ATN which in turn owns the ATN states.
atn::ATN Rc2RawParser::_atn;
std::vector<uint16_t> Rc2RawParser::_serializedATN;

std::vector<std::string> Rc2RawParser::_ruleNames = {
  "document", "chunk", "yaml", "mdown", "code", "codeArg", "inlineCode", 
  "inlineEQ", "equation"
};

std::vector<std::string> Rc2RawParser::_literalNames = {
  "", "", "", "'{r'", "", "", "'`r '", "", "", "", "", "", "'='", "','", 
  "", "", "", "", "'+'", "'-'", "", "", "", "", "", "'`'", "", "'$$'", "", 
  "'$'"
};

std::vector<std::string> Rc2RawParser::_symbolicNames = {
  "", "YAML_START", "CODE_START", "CODE_ARGS_START", "EQ_START", "IEQ_START", 
  "IC_START", "MDOWN", "YAML", "YAML_END", "WS", "NL", "EQ_CHAR", "COMMA", 
  "HEX", "INT", "FLOAT", "COMPLEX", "PLUS", "MINUS", "BOOL", "STRING", "ID", 
  "CODE_ARGS_END", "IC_CODE", "IC_END", "EQ_CODE", "EQ_END", "IEQ_CODE", 
  "IEQ_END", "CODE", "NOT_BACKTICK", "CODE_END"
};

dfa::Vocabulary Rc2RawParser::_vocabulary(_literalNames, _symbolicNames);

std::vector<std::string> Rc2RawParser::_tokenNames;

Rc2RawParser::Initializer::Initializer() {
	for (size_t i = 0; i < _symbolicNames.size(); ++i) {
		std::string name = _vocabulary.getLiteralName(i);
		if (name.empty()) {
			name = _vocabulary.getSymbolicName(i);
		}

		if (name.empty()) {
			_tokenNames.push_back("<INVALID>");
		} else {
      _tokenNames.push_back(name);
    }
	}

  _serializedATN = {
    0x3, 0x608b, 0xa72a, 0x8133, 0xb9ed, 0x417c, 0x3be7, 0x7786, 0x5964, 
    0x3, 0x22, 0x51, 0x4, 0x2, 0x9, 0x2, 0x4, 0x3, 0x9, 0x3, 0x4, 0x4, 0x9, 
    0x4, 0x4, 0x5, 0x9, 0x5, 0x4, 0x6, 0x9, 0x6, 0x4, 0x7, 0x9, 0x7, 0x4, 
    0x8, 0x9, 0x8, 0x4, 0x9, 0x9, 0x9, 0x4, 0xa, 0x9, 0xa, 0x3, 0x2, 0x7, 
    0x2, 0x16, 0xa, 0x2, 0xc, 0x2, 0xe, 0x2, 0x19, 0xb, 0x2, 0x3, 0x2, 0x3, 
    0x2, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x5, 
    0x3, 0x23, 0xa, 0x3, 0x3, 0x4, 0x3, 0x4, 0x7, 0x4, 0x27, 0xa, 0x4, 0xc, 
    0x4, 0xe, 0x4, 0x2a, 0xb, 0x4, 0x3, 0x4, 0x3, 0x4, 0x3, 0x5, 0x6, 0x5, 
    0x2f, 0xa, 0x5, 0xd, 0x5, 0xe, 0x5, 0x30, 0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 
    0x7, 0x6, 0x36, 0xa, 0x6, 0xc, 0x6, 0xe, 0x6, 0x39, 0xb, 0x6, 0x3, 0x6, 
    0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 
    0x5, 0x7, 0x43, 0xa, 0x7, 0x3, 0x8, 0x3, 0x8, 0x3, 0x8, 0x3, 0x8, 0x3, 
    0x9, 0x3, 0x9, 0x3, 0x9, 0x3, 0x9, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 
    0xa, 0x3, 0xa, 0x2, 0x2, 0xb, 0x2, 0x4, 0x6, 0x8, 0xa, 0xc, 0xe, 0x10, 
    0x12, 0x2, 0x4, 0x4, 0x2, 0x9, 0x9, 0xc, 0xd, 0x4, 0x2, 0x11, 0x12, 
    0x16, 0x18, 0x2, 0x51, 0x2, 0x17, 0x3, 0x2, 0x2, 0x2, 0x4, 0x22, 0x3, 
    0x2, 0x2, 0x2, 0x6, 0x24, 0x3, 0x2, 0x2, 0x2, 0x8, 0x2e, 0x3, 0x2, 0x2, 
    0x2, 0xa, 0x32, 0x3, 0x2, 0x2, 0x2, 0xc, 0x42, 0x3, 0x2, 0x2, 0x2, 0xe, 
    0x44, 0x3, 0x2, 0x2, 0x2, 0x10, 0x48, 0x3, 0x2, 0x2, 0x2, 0x12, 0x4c, 
    0x3, 0x2, 0x2, 0x2, 0x14, 0x16, 0x5, 0x4, 0x3, 0x2, 0x15, 0x14, 0x3, 
    0x2, 0x2, 0x2, 0x16, 0x19, 0x3, 0x2, 0x2, 0x2, 0x17, 0x15, 0x3, 0x2, 
    0x2, 0x2, 0x17, 0x18, 0x3, 0x2, 0x2, 0x2, 0x18, 0x1a, 0x3, 0x2, 0x2, 
    0x2, 0x19, 0x17, 0x3, 0x2, 0x2, 0x2, 0x1a, 0x1b, 0x7, 0x2, 0x2, 0x3, 
    0x1b, 0x3, 0x3, 0x2, 0x2, 0x2, 0x1c, 0x23, 0x5, 0x6, 0x4, 0x2, 0x1d, 
    0x23, 0x5, 0xa, 0x6, 0x2, 0x1e, 0x23, 0x5, 0x12, 0xa, 0x2, 0x1f, 0x23, 
    0x5, 0xe, 0x8, 0x2, 0x20, 0x23, 0x5, 0x10, 0x9, 0x2, 0x21, 0x23, 0x5, 
    0x8, 0x5, 0x2, 0x22, 0x1c, 0x3, 0x2, 0x2, 0x2, 0x22, 0x1d, 0x3, 0x2, 
    0x2, 0x2, 0x22, 0x1e, 0x3, 0x2, 0x2, 0x2, 0x22, 0x1f, 0x3, 0x2, 0x2, 
    0x2, 0x22, 0x20, 0x3, 0x2, 0x2, 0x2, 0x22, 0x21, 0x3, 0x2, 0x2, 0x2, 
    0x23, 0x5, 0x3, 0x2, 0x2, 0x2, 0x24, 0x28, 0x7, 0x3, 0x2, 0x2, 0x25, 
    0x27, 0x7, 0xa, 0x2, 0x2, 0x26, 0x25, 0x3, 0x2, 0x2, 0x2, 0x27, 0x2a, 
    0x3, 0x2, 0x2, 0x2, 0x28, 0x26, 0x3, 0x2, 0x2, 0x2, 0x28, 0x29, 0x3, 
    0x2, 0x2, 0x2, 0x29, 0x2b, 0x3, 0x2, 0x2, 0x2, 0x2a, 0x28, 0x3, 0x2, 
    0x2, 0x2, 0x2b, 0x2c, 0x7, 0xb, 0x2, 0x2, 0x2c, 0x7, 0x3, 0x2, 0x2, 
    0x2, 0x2d, 0x2f, 0x9, 0x2, 0x2, 0x2, 0x2e, 0x2d, 0x3, 0x2, 0x2, 0x2, 
    0x2f, 0x30, 0x3, 0x2, 0x2, 0x2, 0x30, 0x2e, 0x3, 0x2, 0x2, 0x2, 0x30, 
    0x31, 0x3, 0x2, 0x2, 0x2, 0x31, 0x9, 0x3, 0x2, 0x2, 0x2, 0x32, 0x33, 
    0x7, 0x4, 0x2, 0x2, 0x33, 0x37, 0x7, 0x5, 0x2, 0x2, 0x34, 0x36, 0x5, 
    0xc, 0x7, 0x2, 0x35, 0x34, 0x3, 0x2, 0x2, 0x2, 0x36, 0x39, 0x3, 0x2, 
    0x2, 0x2, 0x37, 0x35, 0x3, 0x2, 0x2, 0x2, 0x37, 0x38, 0x3, 0x2, 0x2, 
    0x2, 0x38, 0x3a, 0x3, 0x2, 0x2, 0x2, 0x39, 0x37, 0x3, 0x2, 0x2, 0x2, 
    0x3a, 0x3b, 0x7, 0x19, 0x2, 0x2, 0x3b, 0x3c, 0x7, 0x20, 0x2, 0x2, 0x3c, 
    0x3d, 0x7, 0x22, 0x2, 0x2, 0x3d, 0xb, 0x3, 0x2, 0x2, 0x2, 0x3e, 0x3f, 
    0x7, 0x18, 0x2, 0x2, 0x3f, 0x40, 0x7, 0xe, 0x2, 0x2, 0x40, 0x43, 0x9, 
    0x3, 0x2, 0x2, 0x41, 0x43, 0x7, 0x18, 0x2, 0x2, 0x42, 0x3e, 0x3, 0x2, 
    0x2, 0x2, 0x42, 0x41, 0x3, 0x2, 0x2, 0x2, 0x43, 0xd, 0x3, 0x2, 0x2, 
    0x2, 0x44, 0x45, 0x7, 0x8, 0x2, 0x2, 0x45, 0x46, 0x7, 0x1a, 0x2, 0x2, 
    0x46, 0x47, 0x7, 0x1b, 0x2, 0x2, 0x47, 0xf, 0x3, 0x2, 0x2, 0x2, 0x48, 
    0x49, 0x7, 0x7, 0x2, 0x2, 0x49, 0x4a, 0x7, 0x1e, 0x2, 0x2, 0x4a, 0x4b, 
    0x7, 0x1f, 0x2, 0x2, 0x4b, 0x11, 0x3, 0x2, 0x2, 0x2, 0x4c, 0x4d, 0x7, 
    0x6, 0x2, 0x2, 0x4d, 0x4e, 0x7, 0x1c, 0x2, 0x2, 0x4e, 0x4f, 0x7, 0x1d, 
    0x2, 0x2, 0x4f, 0x13, 0x3, 0x2, 0x2, 0x2, 0x8, 0x17, 0x22, 0x28, 0x30, 
    0x37, 0x42, 
  };

  atn::ATNDeserializer deserializer;
  _atn = deserializer.deserialize(_serializedATN);

  size_t count = _atn.getNumberOfDecisions();
  _decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    _decisionToDFA.emplace_back(_atn.getDecisionState(i), i);
  }
}

Rc2RawParser::Initializer Rc2RawParser::_init;