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
                 NOT = 36, PERCENT = 37, HASH = 38, BAR = 39, DBAR = 40, 
                 AMP = 41, DAMP = 42, COLEQ = 43, ASSIGN = 44, DASSIGN = 45, 
                 RASSIGN = 46, DRASSIGN = 47, EQ_CHAR = 48, TRIPLE_COLON = 49, 
                 DOUBLE_COLON = 50, COLON = 51, DOLLAR_CHAR = 52, AT_CHAR = 53, 
                 TILDE = 54, USCORE = 55, PERIOD = 56, SQUOTE = 57, DQUOTE = 58, 
                 TRIPLE_DOT = 59, COMMA = 60, BACKTICK = 61, SEMI = 62, 
                 CARAT = 63, NULLT = 64, NaN = 65, TRUE = 66, FALSE = 67, 
                 NA = 68, INF = 69, USER_OP = 70, COMMENT = 71, NL = 72, 
                 WS = 73
	}

	public
	static let RULE_stream = 0, RULE_eat = 1, RULE_elem = 2, RULE_comment = 3, 
            RULE_atom = 4, RULE_op = 5

	public
	static let ruleNames: [String] = [
		"stream", "eat", "elem", "comment", "atom", "op"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, "'if'", "'else'", "'repeat'", "'while'", 
		"'for'", "'in'", "'break'", "'next'", "'function'", nil, "'('", "')'", 
		"'['", "']'", "'[['", "']]'", "'{'", "'}'", "'?'", "'+'", "'-'", "'*'", 
		"'/'", "'<'", "'<='", "'>'", "'>='", "'=='", "'!='", "'!'", "'%'", "'#'", 
		"'|'", "'||'", "'&'", "'&&'", "':='", "'<-'", "'<<-'", "'->'", "'->>'", 
		"'='", "':::'", "'::'", "':'", "'$'", "'@'", "'~'", "'_'", "'.'", "'''", 
		"'\"'", "'...'", "','", "'`'", "';'", "'^'", "'NULL'", "'NaN'", "'TRUE'", 
		"'FALSE'", "'NA'", "'Inf'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "HEX", "INT", "FLOAT", "COMPLEX", "STRING", "ID", "IF", "ELSE", "REPEAT", 
		"WHILE", "FOR", "IN", "BREAK", "NEXT", "FUNCTION", "AND_OP", "PAR_OPEN", 
		"PAR_CLOSE", "BRA_OPEN", "BRA_CLOSE", "DBRA_OPEN", "DBRA_CLOSE", "BRC_OPEN", 
		"BRC_CLOSE", "QMARK", "PLUS", "MINUS", "ASTERICK", "SLASH", "LT", "LTE", 
		"GT", "GTE", "EQUAL_OP", "NOTEQUAL_OP", "NOT", "PERCENT", "HASH", "BAR", 
		"DBAR", "AMP", "DAMP", "COLEQ", "ASSIGN", "DASSIGN", "RASSIGN", "DRASSIGN", 
		"EQ_CHAR", "TRIPLE_COLON", "DOUBLE_COLON", "COLON", "DOLLAR_CHAR", "AT_CHAR", 
		"TILDE", "USCORE", "PERIOD", "SQUOTE", "DQUOTE", "TRIPLE_DOT", "COMMA", 
		"BACKTICK", "SEMI", "CARAT", "NULLT", "NaN", "TRUE", "FALSE", "NA", "INF", 
		"USER_OP", "COMMENT", "NL", "WS"
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
		 	setState(17)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.SEMI.rawValue,RFilter.Tokens.CARAT.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.COMMENT.rawValue,RFilter.Tokens.NL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 64)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(15)
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
		 		case .NULLT:fallthrough
		 		case .NaN:fallthrough
		 		case .TRUE:fallthrough
		 		case .FALSE:fallthrough
		 		case .NA:fallthrough
		 		case .INF:fallthrough
		 		case .USER_OP:fallthrough
		 		case .COMMENT:
		 			setState(12)
		 			try elem()

		 			break

		 		case .NL:
		 			setState(13)
		 			try match(RFilter.Tokens.NL.rawValue)

		 			break

		 		case .SEMI:
		 			setState(14)
		 			try match(RFilter.Tokens.SEMI.rawValue)

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 		setState(19)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(20)
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
		 	setState(24); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(22)
                    let token = try match(RFilter.Tokens.NL.rawValue) as! WritableToken
		 			token.setChannel(type(of: token).HIDDEN_CHANNEL)


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(26); 
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
			func comment() -> CommentContext? {
				return getRuleContext(CommentContext.self, 0)
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
		 	setState(143)
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
		 		setState(28)
		 		try op()
		 		setState(30)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,3,_ctx)) {
		 		case 1:
		 			setState(29)
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
		 	case .NULLT:fallthrough
		 	case .NaN:fallthrough
		 	case .TRUE:fallthrough
		 	case .FALSE:fallthrough
		 	case .NA:fallthrough
		 	case .INF:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(32)
		 		try atom()

		 		break

		 	case .COMMENT:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(33)
		 		try comment()

		 		break

		 	case .BRC_OPEN:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(34)
		 		try match(RFilter.Tokens.BRC_OPEN.rawValue)
		 		setState(36)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,4,_ctx)) {
		 		case 1:
		 			setState(35)
		 			try eat()

		 			break
		 		default: break
		 		}
		 		curlies += 1
		 		setState(44)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.SEMI.rawValue,RFilter.Tokens.CARAT.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.COMMENT.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(42)
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
		 			case .NULLT:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:fallthrough
		 			case .COMMENT:
		 				setState(39)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(40)
		 				try match(RFilter.Tokens.NL.rawValue)

		 				break

		 			case .SEMI:
		 				setState(41)
		 				try match(RFilter.Tokens.SEMI.rawValue)

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(46)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		curlies -= 1
		 		setState(48)
		 		try match(RFilter.Tokens.BRC_CLOSE.rawValue)

		 		break

		 	case .PAR_OPEN:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(49)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(54)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.COMMENT.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(52)
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
		 			case .NULLT:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:fallthrough
		 			case .COMMENT:
		 				setState(50)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(51)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(56)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(57)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)

		 		break

		 	case .BRA_OPEN:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(58)
		 		try match(RFilter.Tokens.BRA_OPEN.rawValue)
		 		setState(63)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.COMMENT.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(61)
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
		 			case .NULLT:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:fallthrough
		 			case .COMMENT:
		 				setState(59)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(60)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(65)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(66)
		 		try match(RFilter.Tokens.BRA_CLOSE.rawValue)

		 		break

		 	case .DBRA_OPEN:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(67)
		 		try match(RFilter.Tokens.DBRA_OPEN.rawValue)
		 		setState(72)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.COMMENT.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(70)
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
		 			case .NULLT:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:fallthrough
		 			case .COMMENT:
		 				setState(68)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(69)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(74)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(75)
		 		try match(RFilter.Tokens.BRA_CLOSE.rawValue)
		 		setState(76)
		 		try match(RFilter.Tokens.BRA_CLOSE.rawValue)

		 		break

		 	case .FUNCTION:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(77)
		 		try match(RFilter.Tokens.FUNCTION.rawValue)
		 		setState(79)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RFilter.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(78)
		 			try eat()

		 		}

		 		setState(81)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(86)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.COMMENT.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(84)
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
		 			case .NULLT:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:fallthrough
		 			case .COMMENT:
		 				setState(82)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(83)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(88)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(89)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)
		 		setState(91)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,16,_ctx)) {
		 		case 1:
		 			setState(90)
		 			try eat()

		 			break
		 		default: break
		 		}

		 		break

		 	case .FOR:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(93)
		 		try match(RFilter.Tokens.FOR.rawValue)
		 		setState(95)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RFilter.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(94)
		 			try eat()

		 		}

		 		setState(97)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(102)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.COMMENT.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(100)
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
		 			case .NULLT:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:fallthrough
		 			case .COMMENT:
		 				setState(98)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(99)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(104)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(105)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)
		 		setState(107)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,20,_ctx)) {
		 		case 1:
		 			setState(106)
		 			try eat()

		 			break
		 		default: break
		 		}

		 		break

		 	case .WHILE:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(109)
		 		try match(RFilter.Tokens.WHILE.rawValue)
		 		setState(111)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RFilter.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(110)
		 			try eat()

		 		}

		 		setState(113)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(118)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.COMMENT.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(116)
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
		 			case .NULLT:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:fallthrough
		 			case .COMMENT:
		 				setState(114)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(115)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(120)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(121)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)
		 		setState(123)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,24,_ctx)) {
		 		case 1:
		 			setState(122)
		 			try eat()

		 			break
		 		default: break
		 		}

		 		break

		 	case .IF:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(125)
		 		try match(RFilter.Tokens.IF.rawValue)
		 		setState(127)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RFilter.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(126)
		 			try eat()

		 		}

		 		setState(129)
		 		try match(RFilter.Tokens.PAR_OPEN.rawValue)
		 		setState(134)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.IF.rawValue,RFilter.Tokens.ELSE.rawValue,RFilter.Tokens.REPEAT.rawValue,RFilter.Tokens.WHILE.rawValue,RFilter.Tokens.FOR.rawValue,RFilter.Tokens.IN.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue,RFilter.Tokens.FUNCTION.rawValue,RFilter.Tokens.PAR_OPEN.rawValue,RFilter.Tokens.BRA_OPEN.rawValue,RFilter.Tokens.DBRA_OPEN.rawValue,RFilter.Tokens.BRC_OPEN.rawValue,RFilter.Tokens.QMARK.rawValue,RFilter.Tokens.PLUS.rawValue,RFilter.Tokens.MINUS.rawValue,RFilter.Tokens.ASTERICK.rawValue,RFilter.Tokens.SLASH.rawValue,RFilter.Tokens.LT.rawValue,RFilter.Tokens.LTE.rawValue,RFilter.Tokens.GT.rawValue,RFilter.Tokens.GTE.rawValue,RFilter.Tokens.EQUAL_OP.rawValue,RFilter.Tokens.NOTEQUAL_OP.rawValue,RFilter.Tokens.NOT.rawValue,RFilter.Tokens.BAR.rawValue,RFilter.Tokens.DBAR.rawValue,RFilter.Tokens.AMP.rawValue,RFilter.Tokens.DAMP.rawValue,RFilter.Tokens.ASSIGN.rawValue,RFilter.Tokens.RASSIGN.rawValue,RFilter.Tokens.EQ_CHAR.rawValue,RFilter.Tokens.TRIPLE_COLON.rawValue,RFilter.Tokens.DOUBLE_COLON.rawValue,RFilter.Tokens.COLON.rawValue,RFilter.Tokens.DOLLAR_CHAR.rawValue,RFilter.Tokens.AT_CHAR.rawValue,RFilter.Tokens.TILDE.rawValue,RFilter.Tokens.TRIPLE_DOT.rawValue,RFilter.Tokens.COMMA.rawValue,RFilter.Tokens.CARAT.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue,RFilter.Tokens.USER_OP.rawValue,RFilter.Tokens.COMMENT.rawValue,RFilter.Tokens.NL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 64)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(132)
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
		 			case .NULLT:fallthrough
		 			case .NaN:fallthrough
		 			case .TRUE:fallthrough
		 			case .FALSE:fallthrough
		 			case .NA:fallthrough
		 			case .INF:fallthrough
		 			case .USER_OP:fallthrough
		 			case .COMMENT:
		 				setState(130)
		 				try elem()

		 				break

		 			case .NL:
		 				setState(131)
		 				try eat()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			setState(136)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(137)
		 		try match(RFilter.Tokens.PAR_CLOSE.rawValue)
		 		setState(139)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,28,_ctx)) {
		 		case 1:
		 			setState(138)
		 			try eat()

		 			break
		 		default: break
		 		}

		 		break

		 	case .ELSE:
		 		try enterOuterAlt(_localctx, 12)
		 		setState(141)
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

	public class CommentContext: ParserRuleContext {
			open
			func COMMENT() -> TerminalNode? {
				return getToken(RFilter.Tokens.COMMENT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RFilter.RULE_comment
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.enterComment(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RFilterListener {
				listener.exitComment(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RFilterVisitor {
			    return visitor.visitComment(self)
			}
			else if let visitor = visitor as? RFilterBaseVisitor {
			    return visitor.visitComment(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func comment() throws -> CommentContext {
		var _localctx: CommentContext = CommentContext(_ctx, getState())
		try enterRule(_localctx, 6, RFilter.RULE_comment)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(145)
		 	try match(RFilter.Tokens.COMMENT.rawValue)

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
			func NULLT() -> TerminalNode? {
				return getToken(RFilter.Tokens.NULLT.rawValue, 0)
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
		try enterRule(_localctx, 8, RFilter.RULE_atom)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(147)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RFilter.Tokens.HEX.rawValue,RFilter.Tokens.INT.rawValue,RFilter.Tokens.FLOAT.rawValue,RFilter.Tokens.COMPLEX.rawValue,RFilter.Tokens.STRING.rawValue,RFilter.Tokens.ID.rawValue,RFilter.Tokens.BREAK.rawValue,RFilter.Tokens.NEXT.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, RFilter.Tokens.NULLT.rawValue,RFilter.Tokens.NaN.rawValue,RFilter.Tokens.TRUE.rawValue,RFilter.Tokens.FALSE.rawValue,RFilter.Tokens.NA.rawValue,RFilter.Tokens.INF.rawValue]
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
		try enterRule(_localctx, 10, RFilter.RULE_op)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(149)
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
