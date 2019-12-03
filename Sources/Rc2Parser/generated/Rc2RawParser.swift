// Generated from Rc2RawParser.g4 by ANTLR 4.7.2
import Antlr4

open class Rc2RawParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = Rc2RawParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(Rc2RawParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, CODE_START = 1, CODE_ARG = 2, EQ_START = 3, IEQ_START = 4, 
                 IC_START = 5, MDOWN = 6, IC_END = 7, IC_CODE = 8, EQ_END = 9, 
                 EQ_CODE = 10, IEQ_CODE = 11, IEQ_END = 12, CODE_END = 13, 
                 NL = 14, CODE = 15, NOT_BACKTICK = 16
	}

	public
	static let RULE_document = 0, RULE_chunk = 1, RULE_mdown = 2, RULE_code = 3, 
            RULE_inlineCode = 4, RULE_inlineEQ = 5, RULE_equation = 6

	public
	static let ruleNames: [String] = [
		"document", "chunk", "mdown", "code", "inlineCode", "inlineEQ", "equation"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, nil, nil, nil, nil, "'`r '", nil, "'`'", nil, "'$$'", nil, nil, "'$'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "CODE_START", "CODE_ARG", "EQ_START", "IEQ_START", "IC_START", "MDOWN", 
		"IC_END", "IC_CODE", "EQ_END", "EQ_CODE", "IEQ_CODE", "IEQ_END", "CODE_END", 
		"NL", "CODE", "NOT_BACKTICK"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "Rc2RawParser.g4" }

	override open
	func getRuleNames() -> [String] { return Rc2RawParser.ruleNames }

	override open
	func getSerializedATN() -> String { return Rc2RawParser._serializedATN }

	override open
	func getATN() -> ATN { return Rc2RawParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return Rc2RawParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,Rc2RawParser._ATN,Rc2RawParser._decisionToDFA, Rc2RawParser._sharedContextCache)
	}


	public class DocumentContext: ParserRuleContext {
			open
			func EOF() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.EOF.rawValue, 0)
			}
			open
			func chunk() -> [ChunkContext] {
				return getRuleContexts(ChunkContext.self)
			}
			open
			func chunk(_ i: Int) -> ChunkContext? {
				return getRuleContext(ChunkContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return Rc2RawParser.RULE_document
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.enterDocument(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.exitDocument(self)
			}
		}
	}
	@discardableResult
	 open func document() throws -> DocumentContext {
		var _localctx: DocumentContext = DocumentContext(_ctx, getState())
		try enterRule(_localctx, 0, Rc2RawParser.RULE_document)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(17)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, Rc2RawParser.Tokens.CODE_START.rawValue,Rc2RawParser.Tokens.EQ_START.rawValue,Rc2RawParser.Tokens.IEQ_START.rawValue,Rc2RawParser.Tokens.IC_START.rawValue,Rc2RawParser.Tokens.MDOWN.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(14)
		 		try chunk()


		 		setState(19)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(20)
		 	try match(Rc2RawParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ChunkContext: ParserRuleContext {
			open
			func code() -> CodeContext? {
				return getRuleContext(CodeContext.self, 0)
			}
			open
			func equation() -> EquationContext? {
				return getRuleContext(EquationContext.self, 0)
			}
			open
			func inlineCode() -> InlineCodeContext? {
				return getRuleContext(InlineCodeContext.self, 0)
			}
			open
			func inlineEQ() -> InlineEQContext? {
				return getRuleContext(InlineEQContext.self, 0)
			}
			open
			func mdown() -> MdownContext? {
				return getRuleContext(MdownContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return Rc2RawParser.RULE_chunk
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.enterChunk(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.exitChunk(self)
			}
		}
	}
	@discardableResult
	 open func chunk() throws -> ChunkContext {
		var _localctx: ChunkContext = ChunkContext(_ctx, getState())
		try enterRule(_localctx, 2, Rc2RawParser.RULE_chunk)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(27)
		 	try _errHandler.sync(self)
		 	switch (Rc2RawParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CODE_START:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(22)
		 		try code()

		 		break

		 	case .EQ_START:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(23)
		 		try equation()

		 		break

		 	case .IC_START:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(24)
		 		try inlineCode()

		 		break

		 	case .IEQ_START:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(25)
		 		try inlineEQ()

		 		break

		 	case .MDOWN:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(26)
		 		try mdown()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MdownContext: ParserRuleContext {
			open
			func MDOWN() -> [TerminalNode] {
				return getTokens(Rc2RawParser.Tokens.MDOWN.rawValue)
			}
			open
			func MDOWN(_ i:Int) -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.MDOWN.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return Rc2RawParser.RULE_mdown
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.enterMdown(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.exitMdown(self)
			}
		}
	}
	@discardableResult
	 open func mdown() throws -> MdownContext {
		var _localctx: MdownContext = MdownContext(_ctx, getState())
		try enterRule(_localctx, 4, Rc2RawParser.RULE_mdown)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(30); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(29)
		 			try match(Rc2RawParser.Tokens.MDOWN.rawValue)


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(32); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,2,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CodeContext: ParserRuleContext {
			open
			func CODE_START() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.CODE_START.rawValue, 0)
			}
			open
			func CODE_ARG() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.CODE_ARG.rawValue, 0)
			}
			open
			func CODE() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.CODE.rawValue, 0)
			}
			open
			func CODE_END() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.CODE_END.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return Rc2RawParser.RULE_code
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.enterCode(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.exitCode(self)
			}
		}
	}
	@discardableResult
	 open func code() throws -> CodeContext {
		var _localctx: CodeContext = CodeContext(_ctx, getState())
		try enterRule(_localctx, 6, Rc2RawParser.RULE_code)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(34)
		 	try match(Rc2RawParser.Tokens.CODE_START.rawValue)
		 	setState(35)
		 	try match(Rc2RawParser.Tokens.CODE_ARG.rawValue)
		 	setState(36)
		 	try match(Rc2RawParser.Tokens.CODE.rawValue)
		 	setState(37)
		 	try match(Rc2RawParser.Tokens.CODE_END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class InlineCodeContext: ParserRuleContext {
			open
			func IC_START() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.IC_START.rawValue, 0)
			}
			open
			func IC_CODE() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.IC_CODE.rawValue, 0)
			}
			open
			func IC_END() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.IC_END.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return Rc2RawParser.RULE_inlineCode
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.enterInlineCode(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.exitInlineCode(self)
			}
		}
	}
	@discardableResult
	 open func inlineCode() throws -> InlineCodeContext {
		var _localctx: InlineCodeContext = InlineCodeContext(_ctx, getState())
		try enterRule(_localctx, 8, Rc2RawParser.RULE_inlineCode)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(39)
		 	try match(Rc2RawParser.Tokens.IC_START.rawValue)
		 	setState(40)
		 	try match(Rc2RawParser.Tokens.IC_CODE.rawValue)
		 	setState(41)
		 	try match(Rc2RawParser.Tokens.IC_END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class InlineEQContext: ParserRuleContext {
			open
			func IEQ_START() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.IEQ_START.rawValue, 0)
			}
			open
			func IEQ_CODE() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.IEQ_CODE.rawValue, 0)
			}
			open
			func IEQ_END() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.IEQ_END.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return Rc2RawParser.RULE_inlineEQ
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.enterInlineEQ(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.exitInlineEQ(self)
			}
		}
	}
	@discardableResult
	 open func inlineEQ() throws -> InlineEQContext {
		var _localctx: InlineEQContext = InlineEQContext(_ctx, getState())
		try enterRule(_localctx, 10, Rc2RawParser.RULE_inlineEQ)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(43)
		 	try match(Rc2RawParser.Tokens.IEQ_START.rawValue)
		 	setState(44)
		 	try match(Rc2RawParser.Tokens.IEQ_CODE.rawValue)
		 	setState(45)
		 	try match(Rc2RawParser.Tokens.IEQ_END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EquationContext: ParserRuleContext {
			open
			func EQ_START() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.EQ_START.rawValue, 0)
			}
			open
			func EQ_CODE() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.EQ_CODE.rawValue, 0)
			}
			open
			func EQ_END() -> TerminalNode? {
				return getToken(Rc2RawParser.Tokens.EQ_END.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return Rc2RawParser.RULE_equation
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.enterEquation(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? Rc2RawParserListener {
				listener.exitEquation(self)
			}
		}
	}
	@discardableResult
	 open func equation() throws -> EquationContext {
		var _localctx: EquationContext = EquationContext(_ctx, getState())
		try enterRule(_localctx, 12, Rc2RawParser.RULE_equation)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(47)
		 	try match(Rc2RawParser.Tokens.EQ_START.rawValue)
		 	setState(48)
		 	try match(Rc2RawParser.Tokens.EQ_CODE.rawValue)
		 	setState(49)
		 	try match(Rc2RawParser.Tokens.EQ_END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public
	static let _serializedATN = Rc2RawParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}