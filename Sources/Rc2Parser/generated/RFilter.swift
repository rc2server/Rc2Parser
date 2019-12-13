// Generated from RFilter.g4 by ANTLR 4.7.2
import Antlr4

open class RFilter: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = RFilter._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(RFilter._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, HEX = 1, INT = 2, FLOAT = 3, COMPLEX = 4, STRING = 5, ID = 6, 
                 IF = 7, ELSE = 8, REPEAT = 9, WHILE = 10, FOR = 11, IN = 12, 
                 BREAK = 13, NEXT = 14, FUNCTION = 15, AND_OP = 16, PAR_OPEN = 17, 
                 PAR_CLOSE = 18, BRA_OPEN = 19, BRA_CLOSE = 20, DBRA_OPEN = 21, 
                 DBRA_CLOSE = 22, BRC_OPEN = 23, BRC_CLOSE = 24, QMARK = 25, 
                 PLUS = 26, MINUS = 27, ASTERICK = 28, SLASH = 29, LT = 30, 
                 LTE = 31, GT = 32, GTE = 33, EQUAL_OP = 34, NOTEQUAL_OP = 35, 
                 NOT = 36, PERCENT = 37, BAR = 38, DBAR = 39, AMP = 40, 
                 DAMP = 41, COLEQ = 42, ASSIGN = 43, DASSIGN = 44, RASSIGN = 45, 
                 DRASSIGN = 46, EQ_CHAR = 47, TRIPLE_COLON = 48, DOUBLE_COLON = 49, 
                 COLON = 50, DOLLAR_CHAR = 51, AT_CHAR = 52, TILDE = 53, 
                 USCORE = 54, PERIOD = 55, SQUOTE = 56, DQUOTE = 57, TRIPLE_DOT = 58, 
                 COMMA = 59, BACKTICK = 60, SEMI = 61, CARAT = 62, NULL = 63, 
                 NaN = 64, TRUE = 65, FALSE = 66, NA = 67, INF = 68, USER_OP = 69, 
                 COMMENT = 70, NL = 71, WS = 72
	}

	public
	static let RULE_stream = 0, RULE_eat = 1, RULE_elem = 2, RULE_atom = 3, 
            RULE_op = 4

	public
	static let ruleNames: [String] = [
		"stream", "eat", "elem", "atom", "op"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, "'if'", "'else'", "'repeat'", "'while'", 
		"'for'", "'in'", "'break'", "'next'", "'function'", nil, "'('", "')'", 
		"'['", "']'", "'[['", "']]'", "'{'", "'}'", "'?'", "'+'", "'-'", "'*'", 
		"'/'", "'<'", "'<='", "'>'", "'>='", "'=='", "'!='", "'!'", "'%'", "'|'", 
		"'||'", "'&'", "'&&'", "':='", "'<-'", "'<<-'", "'->'", "'->>'", "'='", 
		"':::'", "'::'", "':'", "'$'", "'@'", "'~'", "'_'", "'.'", "'''", "'\"'", 
		"'...'", "','", "'`'", "';'", "'^'", "'NULL'", "'NaN'", "'TRUE'", "'FALSE'", 
		"'NA'", "'Inf'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "HEX", "INT", "FLOAT", "COMPLEX", "STRING", "ID", "IF", "ELSE", "REPEAT", 
		"WHILE", "FOR", "IN", "BREAK", "NEXT", "FUNCTION", "AND_OP", "PAR_OPEN", 
		"PAR_CLOSE", "BRA_OPEN", "BRA_CLOSE", "DBRA_OPEN", "DBRA_CLOSE", "BRC_OPEN", 
		"BRC_CLOSE", "QMARK", "PLUS", "MINUS", "ASTERICK", "SLASH", "LT", "LTE", 
		"GT", "GTE", "EQUAL_OP", "NOTEQUAL_OP", "NOT", "PERCENT", "BAR", "DBAR", 
		"AMP", "DAMP", "COLEQ", "ASSIGN", "DASSIGN", "RASSIGN", "DRASSIGN", "EQ_CHAR", 
		"TRIPLE_COLON", "DOUBLE_COLON", "COLON", "DOLLAR_CHAR", "AT_CHAR", "TILDE", 
		"USCORE", "PERIOD", "SQUOTE", "DQUOTE", "TRIPLE_DOT", "COMMA", "BACKTICK", 
		"SEMI", "CARAT", "NULL", "NaN", "TRUE", "FALSE", "NA", "INF", "USER_OP", 
		"COMMENT", "NL", "WS"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "RFilter.g4" }

	override open
	func getRuleNames() -> [String] { return RFilter.ruleNames }

	override open
	func getSerializedATN() -> String { return RFilter._serializedATN }

	override open
	func getATN() -> ATN { return RFilter._ATN }


	var curlies = 0;


	override open
	func getVocabulary() -> Vocabulary {
	    return RFilter.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,RFilter._ATN,RFilter._decisionToDFA, RFilter._sharedContextCache)
	}


	public class StreamContext: ParserRuleContext {
			open
			func EOF() -> TerminalNode? {
				return getToken(RFilter.Tokens.EOF.rawValue, 0)
			}
			open
			func elem() -> [ElemContext] {
				return getRuleContexts(ElemContext.self)
			}
			open
			func elem(_ i: Int) -> ElemContext? {
				return getRuleContext(ElemContext.self, i)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(RFilter.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(RFilter.Tokens.NL.rawValue, i)
			}
			open
			func SEMI() -> [TerminalNode] {
				return getTokens(RFilter.Tokens.SEMI.rawValue)
			}
			open
			func SEMI(_ i:Int) -> TerminalNode? {
				return getToken(RFilter.Tokens.SEMI.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return RFilter.RULE_stream
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.enterStream(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.exitStream(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RFilterVisitor {
			    return visitor.visitStream(self)
			}
			else if let visitor = visitor as? RFilterBaseVisitor {
			    return visitor.visitStream(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func stream() throws -> StreamContext {
		var _localctx: StreamContext = StreamContext(_ctx, getState())
		try enterRule(_localctx, 0, RFilter.RULE_stream)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(15)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.SEMI.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.NULL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.NL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 64)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(13)
		 		try _errHandler.sync(self)
		 		switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 		case .HEX:fallthrough
		 		case .INT:fallthrough
		 		case .FLOAT:fallthrough
		 		case .COMPLEX:fallthrough
		 		case .STRING:fallthrough
		 		case .ID:fallthrough
		 		case .IF:fallthrough
		 		case .ELSE:fallthrough
		 		case .REPEAT:fallthrough
		 		case .WHILE:fallthrough
		 		case .FOR:fallthrough
		 		case .IN:fallthrough
		 		case .BREAK:fallthrough
		 		case .NEXT:fallthrough
		 		case .FUNCTION:fallthrough
		 		case .PAR_OPEN:fallthrough
		 		case .BRA_OPEN:fallthrough
		 		case .DBRA_OPEN:fallthrough
		 		case .BRC_OPEN:fallthrough
		 		case .QMARK:fallthrough
		 		case .PLUS:fallthrough
		 		case .MINUS:fallthrough
		 		case .ASTERICK:fallthrough
		 		case .SLASH:fallthrough
		 		case .LT:fallthrough
		 		case .LTE:fallthrough
		 		case .GT:fallthrough
		 		case .GTE:fallthrough
		 		case .EQUAL_OP:fallthrough
		 		case .NOTEQUAL_OP:fallthrough
		 		case .NOT:fallthrough
		 		case .BAR:fallthrough
		 		case .DBAR:fallthrough
		 		case .AMP:fallthrough
		 		case .DAMP:fallthrough
		 		case .ASSIGN:fallthrough
		 		case .RASSIGN:fallthrough
		 		case .EQ_CHAR:fallthrough
		 		case .TRIPLE_COLON:fallthrough
		 		case .DOUBLE_COLON:fallthrough
		 		case .COLON:fallthrough
		 		case .DOLLAR_CHAR:fallthrough
		 		case .AT_CHAR:fallthrough
		 		case .TILDE:fallthrough
		 		case .TRIPLE_DOT:fallthrough
		 		case .COMMA:fallthrough
		 		case .CARAT:fallthrough
		 		case .NULL:fallthrough
		 		case .NaN:fallthrough
		 		case .TRUE:fallthrough
		 		case .FALSE:fallthrough
		 		case .NA:fallthrough
		 		case .INF:fallthrough
		 		case .USER_OP:
		 			setState(10)
		 			try elem()

		 			break

		 		case .NL:
		 			setState(11)
		 			try match(RFilter.Tokens.NL.rawValue)

		 			break

		 		case .SEMI:
		 			setState(12)
		 			try match(RFilter.Tokens.SEMI.rawValue)

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 		setState(17)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(18)
		 	try match(RFilter.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EatContext: ParserRuleContext {
			open
			func NL() -> [TerminalNode] {
				return getTokens(RFilter.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(RFilter.Tokens.NL.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return RFilter.RULE_eat
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.enterEat(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.exitEat(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RFilterVisitor {
			    return visitor.visitEat(self)
			}
			else if let visitor = visitor as? RFilterBaseVisitor {
			    return visitor.visitEat(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func eat() throws -> EatContext {
		var _localctx: EatContext = EatContext(_ctx, getState())
		try enterRule(_localctx, 2, RFilter.RULE_eat)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(22); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(20)
		 			try match(RFilter.Tokens.NL.rawValue)
		 			let token = _localctx.castdown(EatContext.self) as! WritableToken
		 			token.setChannel(type(of: token).HIDDEN_CHANNEL)


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(24); 
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

	public class ElemContext: ParserRuleContext {
			open
			func op() -> OpContext? {
				return getRuleContext(OpContext.self, 0)
			}
			open
			func eat() -> [EatContext] {
				return getRuleContexts(EatContext.self)
			}
			open
			func eat(_ i: Int) -> EatContext? {
				return getRuleContext(EatContext.self, i)
			}
			open
			func atom() -> AtomContext? {
				return getRuleContext(AtomContext.self, 0)
			}
			open
			func BRC_OPEN() -> TerminalNode? {
				return getToken(RFilter.Tokens.BRC_OPEN.rawValue, 0)
			}
			open
			func BRC_CLOSE() -> TerminalNode? {
				return getToken(RFilter.Tokens.BRC_CLOSE.rawValue, 0)
			}
			open
			func elem() -> [ElemContext] {
				return getRuleContexts(ElemContext.self)
			}
			open
			func elem(_ i: Int) -> ElemContext? {
				return getRuleContext(ElemContext.self, i)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(RFilter.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(RFilter.Tokens.NL.rawValue, i)
			}
			open
			func SEMI() -> [TerminalNode] {
				return getTokens(RFilter.Tokens.SEMI.rawValue)
			}
			open
			func SEMI(_ i:Int) -> TerminalNode? {
				return getToken(RFilter.Tokens.SEMI.rawValue, i)
			}
			open
			func PAR_OPEN() -> TerminalNode? {
				return getToken(RFilter.Tokens.PAR_OPEN.rawValue, 0)
			}
			open
			func PAR_CLOSE() -> TerminalNode? {
				return getToken(RFilter.Tokens.PAR_CLOSE.rawValue, 0)
			}
			open
			func BRA_OPEN() -> TerminalNode? {
				return getToken(RFilter.Tokens.BRA_OPEN.rawValue, 0)
			}
			open
			func BRA_CLOSE() -> [TerminalNode] {
				return getTokens(RFilter.Tokens.BRA_CLOSE.rawValue)
			}
			open
			func BRA_CLOSE(_ i:Int) -> TerminalNode? {
				return getToken(RFilter.Tokens.BRA_CLOSE.rawValue, i)
			}
			open
			func DBRA_OPEN() -> TerminalNode? {
				return getToken(RFilter.Tokens.DBRA_OPEN.rawValue, 0)
			}
			open
			func FUNCTION() -> TerminalNode? {
				return getToken(RFilter.Tokens.FUNCTION.rawValue, 0)
			}
			open
			func FOR() -> TerminalNode? {
				return getToken(RFilter.Tokens.FOR.rawValue, 0)
			}
			open
			func WHILE() -> TerminalNode? {
				return getToken(RFilter.Tokens.WHILE.rawValue, 0)
			}
			open
			func IF() -> TerminalNode? {
				return getToken(RFilter.Tokens.IF.rawValue, 0)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(RFilter.Tokens.ELSE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RFilter.RULE_elem
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.enterElem(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.exitElem(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RFilterVisitor {
			    return visitor.visitElem(self)
			}
			else if let visitor = visitor as? RFilterBaseVisitor {
			    return visitor.visitElem(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func elem() throws -> ElemContext {
		var _localctx: ElemContext = ElemContext(_ctx, getState())
		try enterRule(_localctx, 4, RFilter.RULE_elem)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(140)
		 	try _errHandler.sync(self)
		 	switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 	case .REPEAT:fallthrough
		 	case .IN:fallthrough
		 	case .QMARK:fallthrough
		 	case .PLUS:fallthrough
		 	case .MINUS:fallthrough
		 	case .ASTERICK:fallthrough
		 	case .SLASH:fallthrough
		 	case .LT:fallthrough
		 	case .LTE:fallthrough
		 	case .GT:fallthrough
		 	case .GTE:fallthrough
		 	case .EQUAL_OP:fallthrough
		 	case .NOTEQUAL_OP:fallthrough
		 	case .NOT:fallthrough
		 	case .BAR:fallthrough
		 	case .DBAR:fallthrough
		 	case .AMP:fallthrough
		 	case .DAMP:fallthrough
		 	case .ASSIGN:fallthrough
		 	case .RASSIGN:fallthrough
		 	case .EQ_CHAR:fallthrough
		 	case .TRIPLE_COLON:fallthrough
		 	case .DOUBLE_COLON:fallthrough
		 	case .COLON:fallthrough
		 	case .DOLLAR_CHAR:fallthrough
		 	case .AT_CHAR:fallthrough
		 	case .TILDE:fallthrough
		 	case .TRIPLE_DOT:fallthrough
		 	case .COMMA:fallthrough
		 	case .CARAT:fallthrough
		 	case .USER_OP:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(26)
		 		try op()
		 		setState(28)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,3,_ctx)) {
		 		case 1:
		 			setState(27)
		 			try eat()

		 			break
		 		default: break
		 		}

		 		break
		 	case .HEX:fallthrough
		 	case .INT:fallthrough
		 	case .FLOAT:fallthrough
		 	case .COMPLEX:fallthrough
		 	case .STRING:fallthrough
		 	case .ID:fallthrough
		 	case .BREAK:fallthrough
		 	case .NEXT:fallthrough
		 	case .NULL:fallthrough
		 	case .NaN:fallthrough
		 	case .TRUE:fallthrough
		 	case .FALSE:fallthrough
		 	case .NA:fallthrough
		 	case .INF:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(30)
		 		try atom()

		 		break

		 	case .BRC_OPEN:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(31)
		 		try match(RFilter.Tokens.BRC_OPEN.rawValue)
		 		setState(33)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,4,_ctx)) {
		 		case 1:
		 			setState(32)
		 			try eat()

		 			break
		 		default: break
		 		}
		 		curlies += 1
		 		setState(41)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.SEMI.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.NULL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(39)
		 			try _errHandler.sync(self)
		 			switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 			case .HEX:fallthrough
		 			case .INT:fallthrough
		 			case .FLOAT:fallthrough
		 			case .COMPLEX:fallthrough
		 			case .STRING:fallthrough
		 			case .ID:fallthrough
		 			case .IF:fallthrough
		 			case .ELSE:fallthrough
		 			case .REPEAT:fallthrough
		 			case .WHILE:fallthrough
		 			case .FOR:fallthrough
		 			case .IN:fallthrough
		 			case .BREAK:fallthrough
		 			case .NEXT:fallthrough
		 			case .FUNCTION:fallthrough
		 			case .PAR_OPEN:fallthrough
		 			case .BRA_OPEN:fallthrough
		 			case .DBRA_OPEN:fallthrough
		 			case .BRC_OPEN:fallthrough
		 			case .QMARK:fallthrough
		 			case .PLUS:fallthrough
		 			case .MINUS:fallthrough
		 			case .ASTERICK:fallthrough
		 			case .SLASH:fallthrough
		 			case .LT:fallthrough
		 			case .LTE:fallthrough
		 			case .GT:fallthrough
		 			case .GTE:fallthrough
		 			case .EQUAL_OP:fallthrough
		 			case .NOTEQUAL_OP:fallthrough
		 			case .NOT:fallthrough
		 			case .BAR:fallthrough
		 			case .DBAR:fallthrough
		 			case .AMP:fallthrough
		 			case .DAMP:fallthrough
		 			case .ASSIGN:fallthrough
		 			case .RASSIGN:fallthrough
		 			case .EQ_CHAR:fallthrough
		 			case .TRIPLE_COLON:fallthrough
		 			case .DOUBLE_COLON:fallthrough
		 			case .COLON:fallthrough
		 			case .DOLLAR_CHAR:fallthrough
		 			case .AT_CHAR:fallthrough
		 			case .TILDE:fallthrough
		 			case .TRIPLE_DOT:fallthrough
		 			case .COMMA:fallthrough
		 			case .CARAT:fallthrough
		 			case .NULL:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:
		 				setState(36)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(37)
		 				try match(RFilter.Tokens.NL.rawValue)

		 				break

		 			case .SEMI:
		 				setState(38)
		 				try match(RFilter.Tokens.SEMI.rawValue)

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(43)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		curlies -= 1
		 		setState(45)
		 		try match(RFilter.Tokens.BRC_CLOSE.rawValue)

		 		break

		 	case .PAR_OPEN:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(46)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(51)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.NULL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(49)
		 			try _errHandler.sync(self)
		 			switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 			case .HEX:fallthrough
		 			case .INT:fallthrough
		 			case .FLOAT:fallthrough
		 			case .COMPLEX:fallthrough
		 			case .STRING:fallthrough
		 			case .ID:fallthrough
		 			case .IF:fallthrough
		 			case .ELSE:fallthrough
		 			case .REPEAT:fallthrough
		 			case .WHILE:fallthrough
		 			case .FOR:fallthrough
		 			case .IN:fallthrough
		 			case .BREAK:fallthrough
		 			case .NEXT:fallthrough
		 			case .FUNCTION:fallthrough
		 			case .PAR_OPEN:fallthrough
		 			case .BRA_OPEN:fallthrough
		 			case .DBRA_OPEN:fallthrough
		 			case .BRC_OPEN:fallthrough
		 			case .QMARK:fallthrough
		 			case .PLUS:fallthrough
		 			case .MINUS:fallthrough
		 			case .ASTERICK:fallthrough
		 			case .SLASH:fallthrough
		 			case .LT:fallthrough
		 			case .LTE:fallthrough
		 			case .GT:fallthrough
		 			case .GTE:fallthrough
		 			case .EQUAL_OP:fallthrough
		 			case .NOTEQUAL_OP:fallthrough
		 			case .NOT:fallthrough
		 			case .BAR:fallthrough
		 			case .DBAR:fallthrough
		 			case .AMP:fallthrough
		 			case .DAMP:fallthrough
		 			case .ASSIGN:fallthrough
		 			case .RASSIGN:fallthrough
		 			case .EQ_CHAR:fallthrough
		 			case .TRIPLE_COLON:fallthrough
		 			case .DOUBLE_COLON:fallthrough
		 			case .COLON:fallthrough
		 			case .DOLLAR_CHAR:fallthrough
		 			case .AT_CHAR:fallthrough
		 			case .TILDE:fallthrough
		 			case .TRIPLE_DOT:fallthrough
		 			case .COMMA:fallthrough
		 			case .CARAT:fallthrough
		 			case .NULL:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:
		 				setState(47)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(48)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(53)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(54)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)

		 		break

		 	case .BRA_OPEN:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(55)
		 		try match(RFilter.Tokens.BRA_OPEN.rawValue)
		 		setState(60)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.NULL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(58)
		 			try _errHandler.sync(self)
		 			switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 			case .HEX:fallthrough
		 			case .INT:fallthrough
		 			case .FLOAT:fallthrough
		 			case .COMPLEX:fallthrough
		 			case .STRING:fallthrough
		 			case .ID:fallthrough
		 			case .IF:fallthrough
		 			case .ELSE:fallthrough
		 			case .REPEAT:fallthrough
		 			case .WHILE:fallthrough
		 			case .FOR:fallthrough
		 			case .IN:fallthrough
		 			case .BREAK:fallthrough
		 			case .NEXT:fallthrough
		 			case .FUNCTION:fallthrough
		 			case .PAR_OPEN:fallthrough
		 			case .BRA_OPEN:fallthrough
		 			case .DBRA_OPEN:fallthrough
		 			case .BRC_OPEN:fallthrough
		 			case .QMARK:fallthrough
		 			case .PLUS:fallthrough
		 			case .MINUS:fallthrough
		 			case .ASTERICK:fallthrough
		 			case .SLASH:fallthrough
		 			case .LT:fallthrough
		 			case .LTE:fallthrough
		 			case .GT:fallthrough
		 			case .GTE:fallthrough
		 			case .EQUAL_OP:fallthrough
		 			case .NOTEQUAL_OP:fallthrough
		 			case .NOT:fallthrough
		 			case .BAR:fallthrough
		 			case .DBAR:fallthrough
		 			case .AMP:fallthrough
		 			case .DAMP:fallthrough
		 			case .ASSIGN:fallthrough
		 			case .RASSIGN:fallthrough
		 			case .EQ_CHAR:fallthrough
		 			case .TRIPLE_COLON:fallthrough
		 			case .DOUBLE_COLON:fallthrough
		 			case .COLON:fallthrough
		 			case .DOLLAR_CHAR:fallthrough
		 			case .AT_CHAR:fallthrough
		 			case .TILDE:fallthrough
		 			case .TRIPLE_DOT:fallthrough
		 			case .COMMA:fallthrough
		 			case .CARAT:fallthrough
		 			case .NULL:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:
		 				setState(56)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(57)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(62)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(63)
		 		try match(RFilter.Tokens.BRA_CLOSE.rawValue)

		 		break

		 	case .DBRA_OPEN:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(64)
		 		try match(RFilter.Tokens.DBRA_OPEN.rawValue)
		 		setState(69)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.NULL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(67)
		 			try _errHandler.sync(self)
		 			switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 			case .HEX:fallthrough
		 			case .INT:fallthrough
		 			case .FLOAT:fallthrough
		 			case .COMPLEX:fallthrough
		 			case .STRING:fallthrough
		 			case .ID:fallthrough
		 			case .IF:fallthrough
		 			case .ELSE:fallthrough
		 			case .REPEAT:fallthrough
		 			case .WHILE:fallthrough
		 			case .FOR:fallthrough
		 			case .IN:fallthrough
		 			case .BREAK:fallthrough
		 			case .NEXT:fallthrough
		 			case .FUNCTION:fallthrough
		 			case .PAR_OPEN:fallthrough
		 			case .BRA_OPEN:fallthrough
		 			case .DBRA_OPEN:fallthrough
		 			case .BRC_OPEN:fallthrough
		 			case .QMARK:fallthrough
		 			case .PLUS:fallthrough
		 			case .MINUS:fallthrough
		 			case .ASTERICK:fallthrough
		 			case .SLASH:fallthrough
		 			case .LT:fallthrough
		 			case .LTE:fallthrough
		 			case .GT:fallthrough
		 			case .GTE:fallthrough
		 			case .EQUAL_OP:fallthrough
		 			case .NOTEQUAL_OP:fallthrough
		 			case .NOT:fallthrough
		 			case .BAR:fallthrough
		 			case .DBAR:fallthrough
		 			case .AMP:fallthrough
		 			case .DAMP:fallthrough
		 			case .ASSIGN:fallthrough
		 			case .RASSIGN:fallthrough
		 			case .EQ_CHAR:fallthrough
		 			case .TRIPLE_COLON:fallthrough
		 			case .DOUBLE_COLON:fallthrough
		 			case .COLON:fallthrough
		 			case .DOLLAR_CHAR:fallthrough
		 			case .AT_CHAR:fallthrough
		 			case .TILDE:fallthrough
		 			case .TRIPLE_DOT:fallthrough
		 			case .COMMA:fallthrough
		 			case .CARAT:fallthrough
		 			case .NULL:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:
		 				setState(65)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(66)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(71)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(72)
		 		try match(RFilter.Tokens.BRA_CLOSE.rawValue)
		 		setState(73)
		 		try match(RFilter.Tokens.BRA_CLOSE.rawValue)

		 		break

		 	case .FUNCTION:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(74)
		 		try match(RFilter.Tokens.FUNCTION.rawValue)
		 		setState(76)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RFilter.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(75)
		 			try eat()

		 		}

		 		setState(78)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(83)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.NULL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(81)
		 			try _errHandler.sync(self)
		 			switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 			case .HEX:fallthrough
		 			case .INT:fallthrough
		 			case .FLOAT:fallthrough
		 			case .COMPLEX:fallthrough
		 			case .STRING:fallthrough
		 			case .ID:fallthrough
		 			case .IF:fallthrough
		 			case .ELSE:fallthrough
		 			case .REPEAT:fallthrough
		 			case .WHILE:fallthrough
		 			case .FOR:fallthrough
		 			case .IN:fallthrough
		 			case .BREAK:fallthrough
		 			case .NEXT:fallthrough
		 			case .FUNCTION:fallthrough
		 			case .PAR_OPEN:fallthrough
		 			case .BRA_OPEN:fallthrough
		 			case .DBRA_OPEN:fallthrough
		 			case .BRC_OPEN:fallthrough
		 			case .QMARK:fallthrough
		 			case .PLUS:fallthrough
		 			case .MINUS:fallthrough
		 			case .ASTERICK:fallthrough
		 			case .SLASH:fallthrough
		 			case .LT:fallthrough
		 			case .LTE:fallthrough
		 			case .GT:fallthrough
		 			case .GTE:fallthrough
		 			case .EQUAL_OP:fallthrough
		 			case .NOTEQUAL_OP:fallthrough
		 			case .NOT:fallthrough
		 			case .BAR:fallthrough
		 			case .DBAR:fallthrough
		 			case .AMP:fallthrough
		 			case .DAMP:fallthrough
		 			case .ASSIGN:fallthrough
		 			case .RASSIGN:fallthrough
		 			case .EQ_CHAR:fallthrough
		 			case .TRIPLE_COLON:fallthrough
		 			case .DOUBLE_COLON:fallthrough
		 			case .COLON:fallthrough
		 			case .DOLLAR_CHAR:fallthrough
		 			case .AT_CHAR:fallthrough
		 			case .TILDE:fallthrough
		 			case .TRIPLE_DOT:fallthrough
		 			case .COMMA:fallthrough
		 			case .CARAT:fallthrough
		 			case .NULL:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:
		 				setState(79)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(80)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(85)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(86)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)
		 		setState(88)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,16,_ctx)) {
		 		case 1:
		 			setState(87)
		 			try eat()

		 			break
		 		default: break
		 		}

		 		break

		 	case .FOR:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(90)
		 		try match(RFilter.Tokens.FOR.rawValue)
		 		setState(92)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RFilter.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(91)
		 			try eat()

		 		}

		 		setState(94)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(99)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.NULL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(97)
		 			try _errHandler.sync(self)
		 			switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 			case .HEX:fallthrough
		 			case .INT:fallthrough
		 			case .FLOAT:fallthrough
		 			case .COMPLEX:fallthrough
		 			case .STRING:fallthrough
		 			case .ID:fallthrough
		 			case .IF:fallthrough
		 			case .ELSE:fallthrough
		 			case .REPEAT:fallthrough
		 			case .WHILE:fallthrough
		 			case .FOR:fallthrough
		 			case .IN:fallthrough
		 			case .BREAK:fallthrough
		 			case .NEXT:fallthrough
		 			case .FUNCTION:fallthrough
		 			case .PAR_OPEN:fallthrough
		 			case .BRA_OPEN:fallthrough
		 			case .DBRA_OPEN:fallthrough
		 			case .BRC_OPEN:fallthrough
		 			case .QMARK:fallthrough
		 			case .PLUS:fallthrough
		 			case .MINUS:fallthrough
		 			case .ASTERICK:fallthrough
		 			case .SLASH:fallthrough
		 			case .LT:fallthrough
		 			case .LTE:fallthrough
		 			case .GT:fallthrough
		 			case .GTE:fallthrough
		 			case .EQUAL_OP:fallthrough
		 			case .NOTEQUAL_OP:fallthrough
		 			case .NOT:fallthrough
		 			case .BAR:fallthrough
		 			case .DBAR:fallthrough
		 			case .AMP:fallthrough
		 			case .DAMP:fallthrough
		 			case .ASSIGN:fallthrough
		 			case .RASSIGN:fallthrough
		 			case .EQ_CHAR:fallthrough
		 			case .TRIPLE_COLON:fallthrough
		 			case .DOUBLE_COLON:fallthrough
		 			case .COLON:fallthrough
		 			case .DOLLAR_CHAR:fallthrough
		 			case .AT_CHAR:fallthrough
		 			case .TILDE:fallthrough
		 			case .TRIPLE_DOT:fallthrough
		 			case .COMMA:fallthrough
		 			case .CARAT:fallthrough
		 			case .NULL:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:
		 				setState(95)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(96)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(101)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(102)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)
		 		setState(104)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,20,_ctx)) {
		 		case 1:
		 			setState(103)
		 			try eat()

		 			break
		 		default: break
		 		}

		 		break

		 	case .WHILE:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(106)
		 		try match(RFilter.Tokens.WHILE.rawValue)
		 		setState(108)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RFilter.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(107)
		 			try eat()

		 		}

		 		setState(110)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(115)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.NULL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(113)
		 			try _errHandler.sync(self)
		 			switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 			case .HEX:fallthrough
		 			case .INT:fallthrough
		 			case .FLOAT:fallthrough
		 			case .COMPLEX:fallthrough
		 			case .STRING:fallthrough
		 			case .ID:fallthrough
		 			case .IF:fallthrough
		 			case .ELSE:fallthrough
		 			case .REPEAT:fallthrough
		 			case .WHILE:fallthrough
		 			case .FOR:fallthrough
		 			case .IN:fallthrough
		 			case .BREAK:fallthrough
		 			case .NEXT:fallthrough
		 			case .FUNCTION:fallthrough
		 			case .PAR_OPEN:fallthrough
		 			case .BRA_OPEN:fallthrough
		 			case .DBRA_OPEN:fallthrough
		 			case .BRC_OPEN:fallthrough
		 			case .QMARK:fallthrough
		 			case .PLUS:fallthrough
		 			case .MINUS:fallthrough
		 			case .ASTERICK:fallthrough
		 			case .SLASH:fallthrough
		 			case .LT:fallthrough
		 			case .LTE:fallthrough
		 			case .GT:fallthrough
		 			case .GTE:fallthrough
		 			case .EQUAL_OP:fallthrough
		 			case .NOTEQUAL_OP:fallthrough
		 			case .NOT:fallthrough
		 			case .BAR:fallthrough
		 			case .DBAR:fallthrough
		 			case .AMP:fallthrough
		 			case .DAMP:fallthrough
		 			case .ASSIGN:fallthrough
		 			case .RASSIGN:fallthrough
		 			case .EQ_CHAR:fallthrough
		 			case .TRIPLE_COLON:fallthrough
		 			case .DOUBLE_COLON:fallthrough
		 			case .COLON:fallthrough
		 			case .DOLLAR_CHAR:fallthrough
		 			case .AT_CHAR:fallthrough
		 			case .TILDE:fallthrough
		 			case .TRIPLE_DOT:fallthrough
		 			case .COMMA:fallthrough
		 			case .CARAT:fallthrough
		 			case .NULL:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:
		 				setState(111)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(112)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(117)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(118)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)
		 		setState(120)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,24,_ctx)) {
		 		case 1:
		 			setState(119)
		 			try eat()

		 			break
		 		default: break
		 		}

		 		break

		 	case .IF:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(122)
		 		try match(RFilter.Tokens.IF.rawValue)
		 		setState(124)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RFilter.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(123)
		 			try eat()

		 		}

		 		setState(126)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(131)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.NULL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(129)
		 			try _errHandler.sync(self)
		 			switch (RFilter.Tokens(rawValue: try _input.LA(1))!) {
		 			case .HEX:fallthrough
		 			case .INT:fallthrough
		 			case .FLOAT:fallthrough
		 			case .COMPLEX:fallthrough
		 			case .STRING:fallthrough
		 			case .ID:fallthrough
		 			case .IF:fallthrough
		 			case .ELSE:fallthrough
		 			case .REPEAT:fallthrough
		 			case .WHILE:fallthrough
		 			case .FOR:fallthrough
		 			case .IN:fallthrough
		 			case .BREAK:fallthrough
		 			case .NEXT:fallthrough
		 			case .FUNCTION:fallthrough
		 			case .PAR_OPEN:fallthrough
		 			case .BRA_OPEN:fallthrough
		 			case .DBRA_OPEN:fallthrough
		 			case .BRC_OPEN:fallthrough
		 			case .QMARK:fallthrough
		 			case .PLUS:fallthrough
		 			case .MINUS:fallthrough
		 			case .ASTERICK:fallthrough
		 			case .SLASH:fallthrough
		 			case .LT:fallthrough
		 			case .LTE:fallthrough
		 			case .GT:fallthrough
		 			case .GTE:fallthrough
		 			case .EQUAL_OP:fallthrough
		 			case .NOTEQUAL_OP:fallthrough
		 			case .NOT:fallthrough
		 			case .BAR:fallthrough
		 			case .DBAR:fallthrough
		 			case .AMP:fallthrough
		 			case .DAMP:fallthrough
		 			case .ASSIGN:fallthrough
		 			case .RASSIGN:fallthrough
		 			case .EQ_CHAR:fallthrough
		 			case .TRIPLE_COLON:fallthrough
		 			case .DOUBLE_COLON:fallthrough
		 			case .COLON:fallthrough
		 			case .DOLLAR_CHAR:fallthrough
		 			case .AT_CHAR:fallthrough
		 			case .TILDE:fallthrough
		 			case .TRIPLE_DOT:fallthrough
		 			case .COMMA:fallthrough
		 			case .CARAT:fallthrough
		 			case .NULL:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:
		 				setState(127)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(128)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(133)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(134)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)
		 		setState(136)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,28,_ctx)) {
		 		case 1:
		 			setState(135)
		 			try eat()

		 			break
		 		default: break
		 		}

		 		break

		 	case .ELSE:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(138)
		 		try match(RFilter.Tokens.ELSE.rawValue)

		 		        // ``inside a compound expression, a newline before else is discarded,
		 		        // whereas at the outermost level, the newline terminates the if
		 		        // construction and a subsequent else causes a syntax error.''
		 		        /*
		 		        Works here
		 		            if (1==0) { print(1) } else { print(2) }

		 		        and correctly gets error here:

		 		            if (1==0) { print(1) }
		 		            else { print(2) }

		 		        this works too:

		 		            if (1==0) {
		 		              if (2==0) print(1)
		 		              else print(2)
		 		            }
		 		        */
		 		        let tok = try _input.LT(-2) as! WritableToken
		 		        if curlies > 0 && tok.getType() == RFilter.Tokens.NL.rawValue { tok.setChannel(type(of: tok).HIDDEN_CHANNEL) }
		 		        

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

	public class AtomContext: ParserRuleContext {
			open
			func NEXT() -> TerminalNode? {
				return getToken(RFilter.Tokens.NEXT.rawValue, 0)
			}
			open
			func BREAK() -> TerminalNode? {
				return getToken(RFilter.Tokens.BREAK.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(RFilter.Tokens.ID.rawValue, 0)
			}
			open
			func STRING() -> TerminalNode? {
				return getToken(RFilter.Tokens.STRING.rawValue, 0)
			}
			open
			func HEX() -> TerminalNode? {
				return getToken(RFilter.Tokens.HEX.rawValue, 0)
			}
			open
			func INT() -> TerminalNode? {
				return getToken(RFilter.Tokens.INT.rawValue, 0)
			}
			open
			func FLOAT() -> TerminalNode? {
				return getToken(RFilter.Tokens.FLOAT.rawValue, 0)
			}
			open
			func COMPLEX() -> TerminalNode? {
				return getToken(RFilter.Tokens.COMPLEX.rawValue, 0)
			}
			open
			func NULL() -> TerminalNode? {
				return getToken(RFilter.Tokens.NULL.rawValue, 0)
			}
			open
			func NA() -> TerminalNode? {
				return getToken(RFilter.Tokens.NA.rawValue, 0)
			}
			open
			func INF() -> TerminalNode? {
				return getToken(RFilter.Tokens.INF.rawValue, 0)
			}
			open
			func NaN() -> TerminalNode? {
				return getToken(RFilter.Tokens.NaN.rawValue, 0)
			}
			open
			func TRUE() -> TerminalNode? {
				return getToken(RFilter.Tokens.TRUE.rawValue, 0)
			}
			open
			func FALSE() -> TerminalNode? {
				return getToken(RFilter.Tokens.FALSE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RFilter.RULE_atom
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.enterAtom(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.exitAtom(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RFilterVisitor {
			    return visitor.visitAtom(self)
			}
			else if let visitor = visitor as? RFilterBaseVisitor {
			    return visitor.visitAtom(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func atom() throws -> AtomContext {
		var _localctx: AtomContext = AtomContext(_ctx, getState())
		try enterRule(_localctx, 6, RFilter.RULE_atom)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(142)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.NULL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 64)
		 	          }()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class OpContext: ParserRuleContext {
			open
			func PLUS() -> TerminalNode? {
				return getToken(RFilter.Tokens.PLUS.rawValue, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(RFilter.Tokens.MINUS.rawValue, 0)
			}
			open
			func ASTERICK() -> TerminalNode? {
				return getToken(RFilter.Tokens.ASTERICK.rawValue, 0)
			}
			open
			func SLASH() -> TerminalNode? {
				return getToken(RFilter.Tokens.SLASH.rawValue, 0)
			}
			open
			func CARAT() -> TerminalNode? {
				return getToken(RFilter.Tokens.CARAT.rawValue, 0)
			}
			open
			func LT() -> TerminalNode? {
				return getToken(RFilter.Tokens.LT.rawValue, 0)
			}
			open
			func LTE() -> TerminalNode? {
				return getToken(RFilter.Tokens.LTE.rawValue, 0)
			}
			open
			func GTE() -> TerminalNode? {
				return getToken(RFilter.Tokens.GTE.rawValue, 0)
			}
			open
			func GT() -> TerminalNode? {
				return getToken(RFilter.Tokens.GT.rawValue, 0)
			}
			open
			func EQUAL_OP() -> TerminalNode? {
				return getToken(RFilter.Tokens.EQUAL_OP.rawValue, 0)
			}
			open
			func NOTEQUAL_OP() -> TerminalNode? {
				return getToken(RFilter.Tokens.NOTEQUAL_OP.rawValue, 0)
			}
			open
			func AMP() -> TerminalNode? {
				return getToken(RFilter.Tokens.AMP.rawValue, 0)
			}
			open
			func DAMP() -> TerminalNode? {
				return getToken(RFilter.Tokens.DAMP.rawValue, 0)
			}
			open
			func USER_OP() -> TerminalNode? {
				return getToken(RFilter.Tokens.USER_OP.rawValue, 0)
			}
			open
			func REPEAT() -> TerminalNode? {
				return getToken(RFilter.Tokens.REPEAT.rawValue, 0)
			}
			open
			func IN() -> TerminalNode? {
				return getToken(RFilter.Tokens.IN.rawValue, 0)
			}
			open
			func QMARK() -> TerminalNode? {
				return getToken(RFilter.Tokens.QMARK.rawValue, 0)
			}
			open
			func NOT() -> TerminalNode? {
				return getToken(RFilter.Tokens.NOT.rawValue, 0)
			}
			open
			func EQ_CHAR() -> TerminalNode? {
				return getToken(RFilter.Tokens.EQ_CHAR.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(RFilter.Tokens.COLON.rawValue, 0)
			}
			open
			func TILDE() -> TerminalNode? {
				return getToken(RFilter.Tokens.TILDE.rawValue, 0)
			}
			open
			func DOLLAR_CHAR() -> TerminalNode? {
				return getToken(RFilter.Tokens.DOLLAR_CHAR.rawValue, 0)
			}
			open
			func AT_CHAR() -> TerminalNode? {
				return getToken(RFilter.Tokens.AT_CHAR.rawValue, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(RFilter.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func RASSIGN() -> TerminalNode? {
				return getToken(RFilter.Tokens.RASSIGN.rawValue, 0)
			}
			open
			func DOUBLE_COLON() -> TerminalNode? {
				return getToken(RFilter.Tokens.DOUBLE_COLON.rawValue, 0)
			}
			open
			func TRIPLE_COLON() -> TerminalNode? {
				return getToken(RFilter.Tokens.TRIPLE_COLON.rawValue, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(RFilter.Tokens.COMMA.rawValue, 0)
			}
			open
			func TRIPLE_DOT() -> TerminalNode? {
				return getToken(RFilter.Tokens.TRIPLE_DOT.rawValue, 0)
			}
			open
			func DBAR() -> TerminalNode? {
				return getToken(RFilter.Tokens.DBAR.rawValue, 0)
			}
			open
			func BAR() -> TerminalNode? {
				return getToken(RFilter.Tokens.BAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RFilter.RULE_op
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.enterOp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.exitOp(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RFilterVisitor {
			    return visitor.visitOp(self)
			}
			else if let visitor = visitor as? RFilterBaseVisitor {
			    return visitor.visitOp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func op() throws -> OpContext {
		var _localctx: OpContext = OpContext(_ctx, getState())
		try enterRule(_localctx, 8, RFilter.RULE_op)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(144)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue,RFilter.Tokens.USER_OP.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 9)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public
	static let _serializedATN = RFilterATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}