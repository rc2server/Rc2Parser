// Generated from R.g4 by ANTLR 4.7.2
import Antlr4

open class RParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = RParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(RParser._ATN.getDecisionState(i)!, i))
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
	static let RULE_prog = 0, RULE_expr = 1, RULE_exprlist = 2, RULE_formlist = 3, 
            RULE_form = 4, RULE_sublist = 5, RULE_sub = 6, RULE_functionCall = 7, 
            RULE_rcomparison = 8, RULE_assignOp = 9, RULE_number = 10, RULE_rcomment = 11

	public
	static let ruleNames: [String] = [
		"prog", "expr", "exprlist", "formlist", "form", "sublist", "sub", "functionCall", 
		"rcomparison", "assignOp", "number", "rcomment"
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
	func getGrammarFileName() -> String { return "R.g4" }

	override open
	func getRuleNames() -> [String] { return RParser.ruleNames }

	override open
	func getSerializedATN() -> String { return RParser._serializedATN }

	override open
	func getATN() -> ATN { return RParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return RParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,RParser._ATN,RParser._decisionToDFA, RParser._sharedContextCache)
	}


	public class ProgContext: ParserRuleContext {
			open
			func EOF() -> TerminalNode? {
				return getToken(RParser.Tokens.EOF.rawValue, 0)
			}
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(RParser.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(RParser.Tokens.NL.rawValue, i)
			}
			open
			func SEMI() -> [TerminalNode] {
				return getTokens(RParser.Tokens.SEMI.rawValue)
			}
			open
			func SEMI(_ i:Int) -> TerminalNode? {
				return getToken(RParser.Tokens.SEMI.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_prog
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterProg(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitProg(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitProg(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitProg(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func prog() throws -> ProgContext {
		var _localctx: ProgContext = ProgContext(_ctx, getState())
		try enterRule(_localctx, 0, RParser.RULE_prog)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(34)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RParser.Tokens.HEX.rawValue,RParser.Tokens.INT.rawValue,RParser.Tokens.FLOAT.rawValue,RParser.Tokens.COMPLEX.rawValue,RParser.Tokens.STRING.rawValue,RParser.Tokens.ID.rawValue,RParser.Tokens.IF.rawValue,RParser.Tokens.REPEAT.rawValue,RParser.Tokens.WHILE.rawValue,RParser.Tokens.FOR.rawValue,RParser.Tokens.BREAK.rawValue,RParser.Tokens.NEXT.rawValue,RParser.Tokens.FUNCTION.rawValue,RParser.Tokens.PAR_OPEN.rawValue,RParser.Tokens.BRC_OPEN.rawValue,RParser.Tokens.QMARK.rawValue,RParser.Tokens.PLUS.rawValue,RParser.Tokens.MINUS.rawValue,RParser.Tokens.NOT.rawValue,RParser.Tokens.TILDE.rawValue,RParser.Tokens.NULL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, RParser.Tokens.NaN.rawValue,RParser.Tokens.TRUE.rawValue,RParser.Tokens.FALSE.rawValue,RParser.Tokens.NA.rawValue,RParser.Tokens.INF.rawValue,RParser.Tokens.COMMENT.rawValue,RParser.Tokens.NL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 64)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(32)
		 		try _errHandler.sync(self)
		 		switch (RParser.Tokens(rawValue: try _input.LA(1))!) {
		 		case .HEX:fallthrough
		 		case .INT:fallthrough
		 		case .FLOAT:fallthrough
		 		case .COMPLEX:fallthrough
		 		case .STRING:fallthrough
		 		case .ID:fallthrough
		 		case .IF:fallthrough
		 		case .REPEAT:fallthrough
		 		case .WHILE:fallthrough
		 		case .FOR:fallthrough
		 		case .BREAK:fallthrough
		 		case .NEXT:fallthrough
		 		case .FUNCTION:fallthrough
		 		case .PAR_OPEN:fallthrough
		 		case .BRC_OPEN:fallthrough
		 		case .QMARK:fallthrough
		 		case .PLUS:fallthrough
		 		case .MINUS:fallthrough
		 		case .NOT:fallthrough
		 		case .TILDE:fallthrough
		 		case .NULL:fallthrough
		 		case .NaN:fallthrough
		 		case .TRUE:fallthrough
		 		case .FALSE:fallthrough
		 		case .NA:fallthrough
		 		case .INF:fallthrough
		 		case .COMMENT:
		 			setState(24)
		 			try expr(0)
		 			setState(28)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
		 			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 				if ( _alt==1 ) {
		 					setState(25)
		 					_la = try _input.LA(1)
		 					if (!(//closure
		 					 { () -> Bool in
		 					      let testSet: Bool = _la == RParser.Tokens.SEMI.rawValue || _la == RParser.Tokens.NL.rawValue
		 					      return testSet
		 					 }())) {
		 					try _errHandler.recoverInline(self)
		 					}
		 					else {
		 						_errHandler.reportMatch(self)
		 						try consume()
		 					}

		 			 
		 				}
		 				setState(30)
		 				try _errHandler.sync(self)
		 				_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
		 			}

		 			break

		 		case .NL:
		 			setState(31)
		 			try match(RParser.Tokens.NL.rawValue)

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 		setState(36)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(37)
		 	try match(RParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class ExprContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_expr
		}
	}
	public class WhileLoopContext: ExprContext {
			open
			func WHILE() -> TerminalNode? {
				return getToken(RParser.Tokens.WHILE.rawValue, 0)
			}
			open
			func PAR_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_OPEN.rawValue, 0)
			}
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func PAR_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_CLOSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterWhileLoop(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitWhileLoop(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitWhileLoop(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitWhileLoop(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class HelpRequestContext: ExprContext {
			open
			func QMARK() -> TerminalNode? {
				return getToken(RParser.Tokens.QMARK.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterHelpRequest(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitHelpRequest(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitHelpRequest(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitHelpRequest(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class RepeatLoopContext: ExprContext {
			open
			func REPEAT() -> TerminalNode? {
				return getToken(RParser.Tokens.REPEAT.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterRepeatLoop(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitRepeatLoop(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitRepeatLoop(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitRepeatLoop(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class TrueRuleContext: ExprContext {
			open
			func TRUE() -> TerminalNode? {
				return getToken(RParser.Tokens.TRUE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterTrueRule(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitTrueRule(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitTrueRule(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitTrueRule(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ExpTildeExpContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func TILDE() -> TerminalNode? {
				return getToken(RParser.Tokens.TILDE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterExpTildeExp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitExpTildeExp(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitExpTildeExp(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitExpTildeExp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ListExpContext: ExprContext {
			open
			func PAR_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_OPEN.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func PAR_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_CLOSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterListExp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitListExp(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitListExp(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitListExp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class DescendantContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func DOUBLE_COLON() -> TerminalNode? {
				return getToken(RParser.Tokens.DOUBLE_COLON.rawValue, 0)
			}
			open
			func TRIPLE_COLON() -> TerminalNode? {
				return getToken(RParser.Tokens.TRIPLE_COLON.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterDescendant(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitDescendant(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitDescendant(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitDescendant(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class HouseContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func CARAT() -> TerminalNode? {
				return getToken(RParser.Tokens.CARAT.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterHouse(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitHouse(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitHouse(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitHouse(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ListRefContext: ExprContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func DBRA_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.DBRA_OPEN.rawValue, 0)
			}
			open
			func sublist() -> SublistContext? {
				return getRuleContext(SublistContext.self, 0)
			}
			open
			func BRA_CLOSE() -> [TerminalNode] {
				return getTokens(RParser.Tokens.BRA_CLOSE.rawValue)
			}
			open
			func BRA_CLOSE(_ i:Int) -> TerminalNode? {
				return getToken(RParser.Tokens.BRA_CLOSE.rawValue, i)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterListRef(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitListRef(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitListRef(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitListRef(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class MulDivContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func ASTERICK() -> TerminalNode? {
				return getToken(RParser.Tokens.ASTERICK.rawValue, 0)
			}
			open
			func SLASH() -> TerminalNode? {
				return getToken(RParser.Tokens.SLASH.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterMulDiv(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitMulDiv(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitMulDiv(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitMulDiv(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class HexRuleContext: ExprContext {
			open
			func HEX() -> TerminalNode? {
				return getToken(RParser.Tokens.HEX.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterHexRule(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitHexRule(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitHexRule(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitHexRule(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class FalseRuleContext: ExprContext {
			open
			func FALSE() -> TerminalNode? {
				return getToken(RParser.Tokens.FALSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterFalseRule(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitFalseRule(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitFalseRule(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitFalseRule(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ArrayContext: ExprContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func BRA_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.BRA_OPEN.rawValue, 0)
			}
			open
			func sublist() -> SublistContext? {
				return getRuleContext(SublistContext.self, 0)
			}
			open
			func BRA_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.BRA_CLOSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterArray(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitArray(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitArray(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitArray(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class StringRuleContext: ExprContext {
			open
			func STRING() -> TerminalNode? {
				return getToken(RParser.Tokens.STRING.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterStringRule(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitStringRule(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitStringRule(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitStringRule(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class TildeExpContext: ExprContext {
			open
			func TILDE() -> TerminalNode? {
				return getToken(RParser.Tokens.TILDE.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterTildeExp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitTildeExp(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitTildeExp(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitTildeExp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class CompoundStmtContext: ExprContext {
			open
			func BRC_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.BRC_OPEN.rawValue, 0)
			}
			open
			func exprlist() -> ExprlistContext? {
				return getRuleContext(ExprlistContext.self, 0)
			}
			open
			func BRC_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.BRC_CLOSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterCompoundStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitCompoundStmt(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitCompoundStmt(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitCompoundStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NumRuleContext: ExprContext {
			open
			func number() -> NumberContext? {
				return getRuleContext(NumberContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNumRule(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNumRule(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNumRule(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNumRule(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ForLoopContext: ExprContext {
			open
			func FOR() -> TerminalNode? {
				return getToken(RParser.Tokens.FOR.rawValue, 0)
			}
			open
			func PAR_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_OPEN.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(RParser.Tokens.ID.rawValue, 0)
			}
			open
			func IN() -> TerminalNode? {
				return getToken(RParser.Tokens.IN.rawValue, 0)
			}
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func PAR_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_CLOSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterForLoop(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitForLoop(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitForLoop(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitForLoop(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class IdRuleContext: ExprContext {
			open
			func ID() -> TerminalNode? {
				return getToken(RParser.Tokens.ID.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterIdRule(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitIdRule(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitIdRule(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitIdRule(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class PlusMinusContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func PLUS() -> TerminalNode? {
				return getToken(RParser.Tokens.PLUS.rawValue, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(RParser.Tokens.MINUS.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterPlusMinus(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitPlusMinus(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitPlusMinus(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitPlusMinus(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class DefineFuncContext: ExprContext {
			open
			func FUNCTION() -> TerminalNode? {
				return getToken(RParser.Tokens.FUNCTION.rawValue, 0)
			}
			open
			func PAR_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_OPEN.rawValue, 0)
			}
			open
			func PAR_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_CLOSE.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func formlist() -> FormlistContext? {
				return getRuleContext(FormlistContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterDefineFunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitDefineFunc(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitDefineFunc(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitDefineFunc(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ComparisonContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func rcomparison() -> RcomparisonContext? {
				return getRuleContext(RcomparisonContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterComparison(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitComparison(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitComparison(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitComparison(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class AssignExpContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func assignOp() -> AssignOpContext? {
				return getRuleContext(AssignOpContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterAssignExp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitAssignExp(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitAssignExp(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitAssignExp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NotNumberContext: ExprContext {
			open
			func NaN() -> TerminalNode? {
				return getToken(RParser.Tokens.NaN.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNotNumber(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNotNumber(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNotNumber(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNotNumber(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class OrExprContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func BAR() -> TerminalNode? {
				return getToken(RParser.Tokens.BAR.rawValue, 0)
			}
			open
			func DBAR() -> TerminalNode? {
				return getToken(RParser.Tokens.DBAR.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterOrExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitOrExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitOrExpr(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitOrExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class CallFuncContext: ExprContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func PAR_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_OPEN.rawValue, 0)
			}
			open
			func sublist() -> SublistContext? {
				return getRuleContext(SublistContext.self, 0)
			}
			open
			func PAR_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_CLOSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterCallFunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitCallFunc(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitCallFunc(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitCallFunc(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class IfelseStmtContext: ExprContext {
			open
			func IF() -> TerminalNode? {
				return getToken(RParser.Tokens.IF.rawValue, 0)
			}
			open
			func PAR_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_OPEN.rawValue, 0)
			}
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func PAR_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_CLOSE.rawValue, 0)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(RParser.Tokens.ELSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterIfelseStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitIfelseStmt(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitIfelseStmt(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitIfelseStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NotExprContext: ExprContext {
			open
			func NOT() -> TerminalNode? {
				return getToken(RParser.Tokens.NOT.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNotExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNotExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNotExpr(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNotExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class IfStmtContext: ExprContext {
			open
			func IF() -> TerminalNode? {
				return getToken(RParser.Tokens.IF.rawValue, 0)
			}
			open
			func PAR_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_OPEN.rawValue, 0)
			}
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func PAR_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_CLOSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterIfStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitIfStmt(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitIfStmt(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitIfStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class UserExprContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func USER_OP() -> TerminalNode? {
				return getToken(RParser.Tokens.USER_OP.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterUserExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitUserExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitUserExpr(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitUserExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class BreakStmtContext: ExprContext {
			open
			func BREAK() -> TerminalNode? {
				return getToken(RParser.Tokens.BREAK.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterBreakStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitBreakStmt(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitBreakStmt(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitBreakStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ColonContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(RParser.Tokens.COLON.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterColon(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitColon(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitColon(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitColon(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class InfinityContext: ExprContext {
			open
			func INF() -> TerminalNode? {
				return getToken(RParser.Tokens.INF.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterInfinity(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitInfinity(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitInfinity(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitInfinity(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class CommentContext: ExprContext {
			open
			func rcomment() -> RcommentContext? {
				return getRuleContext(RcommentContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterComment(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitComment(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitComment(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitComment(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NaRuleContext: ExprContext {
			open
			func NA() -> TerminalNode? {
				return getToken(RParser.Tokens.NA.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNaRule(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNaRule(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNaRule(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNaRule(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class DollarOrAtContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func DOLLAR_CHAR() -> TerminalNode? {
				return getToken(RParser.Tokens.DOLLAR_CHAR.rawValue, 0)
			}
			open
			func AT_CHAR() -> TerminalNode? {
				return getToken(RParser.Tokens.AT_CHAR.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterDollarOrAt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitDollarOrAt(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitDollarOrAt(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitDollarOrAt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class PlusNegContext: ExprContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(RParser.Tokens.MINUS.rawValue, 0)
			}
			open
			func PLUS() -> TerminalNode? {
				return getToken(RParser.Tokens.PLUS.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterPlusNeg(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitPlusNeg(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitPlusNeg(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitPlusNeg(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NextStmtContext: ExprContext {
			open
			func NEXT() -> TerminalNode? {
				return getToken(RParser.Tokens.NEXT.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNextStmt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNextStmt(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNextStmt(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNextStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NullRuleContext: ExprContext {
			open
			func NULL() -> TerminalNode? {
				return getToken(RParser.Tokens.NULL.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNullRule(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNullRule(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNullRule(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNullRule(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class AndExprContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func AND_OP() -> TerminalNode? {
				return getToken(RParser.Tokens.AND_OP.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterAndExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitAndExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitAndExpr(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitAndExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func expr( ) throws -> ExprContext   {
		return try expr(0)
	}
	@discardableResult
	private func expr(_ _p: Int) throws -> ExprContext   {
		let _parentctx: ParserRuleContext? = _ctx
		var _parentState: Int = getState()
		var _localctx: ExprContext = ExprContext(_ctx, _parentState)
		var  _prevctx: ExprContext = _localctx
		var _startState: Int = 2
		try enterRecursionRule(_localctx, 2, RParser.RULE_expr, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(106)
			try _errHandler.sync(self)
			switch(try getInterpreter().adaptivePredict(_input,4, _ctx)) {
			case 1:
				_localctx = PlusNegContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(40)
				_la = try _input.LA(1)
				if (!(//closure
				 { () -> Bool in
				      let testSet: Bool = _la == RParser.Tokens.PLUS.rawValue || _la == RParser.Tokens.MINUS.rawValue
				      return testSet
				 }())) {
				try _errHandler.recoverInline(self)
				}
				else {
					_errHandler.reportMatch(self)
					try consume()
				}
				setState(41)
				try expr(35)

				break
			case 2:
				_localctx = NotExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(42)
				try match(RParser.Tokens.NOT.rawValue)
				setState(43)
				try expr(29)

				break
			case 3:
				_localctx = TildeExpContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(44)
				try match(RParser.Tokens.TILDE.rawValue)
				setState(45)
				try expr(26)

				break
			case 4:
				_localctx = DefineFuncContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(46)
				try match(RParser.Tokens.FUNCTION.rawValue)
				setState(47)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(49)
				try _errHandler.sync(self)
				_la = try _input.LA(1)
				if (//closure
				 { () -> Bool in
				      let testSet: Bool = {  () -> Bool in
				   let testArray: [Int] = [_la, RParser.Tokens.ID.rawValue,RParser.Tokens.PERIOD.rawValue,RParser.Tokens.TRIPLE_DOT.rawValue]
				    return  Utils.testBitLeftShiftArray(testArray, 0)
				}()
				      return testSet
				 }()) {
					setState(48)
					try formlist()

				}

				setState(51)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(52)
				try expr(23)

				break
			case 5:
				_localctx = CompoundStmtContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(53)
				try match(RParser.Tokens.BRC_OPEN.rawValue)
				setState(54)
				try exprlist()
				setState(55)
				try match(RParser.Tokens.BRC_CLOSE.rawValue)

				break
			case 6:
				_localctx = IfStmtContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(57)
				try match(RParser.Tokens.IF.rawValue)
				setState(58)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(59)
				try expr(0)
				setState(60)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(61)
				try expr(20)

				break
			case 7:
				_localctx = IfelseStmtContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(63)
				try match(RParser.Tokens.IF.rawValue)
				setState(64)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(65)
				try expr(0)
				setState(66)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(67)
				try expr(0)
				setState(68)
				try match(RParser.Tokens.ELSE.rawValue)
				setState(69)
				try expr(19)

				break
			case 8:
				_localctx = ForLoopContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(71)
				try match(RParser.Tokens.FOR.rawValue)
				setState(72)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(73)
				try match(RParser.Tokens.ID.rawValue)
				setState(74)
				try match(RParser.Tokens.IN.rawValue)
				setState(75)
				try expr(0)
				setState(76)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(77)
				try expr(18)

				break
			case 9:
				_localctx = WhileLoopContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(79)
				try match(RParser.Tokens.WHILE.rawValue)
				setState(80)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(81)
				try expr(0)
				setState(82)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(83)
				try expr(17)

				break
			case 10:
				_localctx = RepeatLoopContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(85)
				try match(RParser.Tokens.REPEAT.rawValue)
				setState(86)
				try expr(16)

				break
			case 11:
				_localctx = HelpRequestContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(87)
				try match(RParser.Tokens.QMARK.rawValue)
				setState(88)
				try expr(15)

				break
			case 12:
				_localctx = NextStmtContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(89)
				try match(RParser.Tokens.NEXT.rawValue)

				break
			case 13:
				_localctx = BreakStmtContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(90)
				try match(RParser.Tokens.BREAK.rawValue)

				break
			case 14:
				_localctx = ListExpContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(91)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(92)
				try expr(0)
				setState(93)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)

				break
			case 15:
				_localctx = IdRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(95)
				try match(RParser.Tokens.ID.rawValue)

				break
			case 16:
				_localctx = StringRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(96)
				try match(RParser.Tokens.STRING.rawValue)

				break
			case 17:
				_localctx = HexRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(97)
				try match(RParser.Tokens.HEX.rawValue)

				break
			case 18:
				_localctx = NumRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(98)
				try number()

				break
			case 19:
				_localctx = NullRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(99)
				try match(RParser.Tokens.NULL.rawValue)

				break
			case 20:
				_localctx = NaRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(100)
				try match(RParser.Tokens.NA.rawValue)

				break
			case 21:
				_localctx = InfinityContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(101)
				try match(RParser.Tokens.INF.rawValue)

				break
			case 22:
				_localctx = NotNumberContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(102)
				try match(RParser.Tokens.NaN.rawValue)

				break
			case 23:
				_localctx = TrueRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(103)
				try match(RParser.Tokens.TRUE.rawValue)

				break
			case 24:
				_localctx = FalseRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(104)
				try match(RParser.Tokens.FALSE.rawValue)

				break
			case 25:
				_localctx = CommentContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(105)
				try rcomment()

				break
			default: break
			}
			_ctx!.stop = try _input.LT(-1)
			setState(164)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,6,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(162)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,5, _ctx)) {
					case 1:
						_localctx = DescendantContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(108)
						if (!(precpred(_ctx, 38))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 38)"))
						}
						setState(109)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == RParser.Tokens.TRIPLE_COLON.rawValue || _la == RParser.Tokens.DOUBLE_COLON.rawValue
						      return testSet
						 }())) {
						try _errHandler.recoverInline(self)
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(110)
						try expr(39)

						break
					case 2:
						_localctx = DollarOrAtContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(111)
						if (!(precpred(_ctx, 37))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 37)"))
						}
						setState(112)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == RParser.Tokens.DOLLAR_CHAR.rawValue || _la == RParser.Tokens.AT_CHAR.rawValue
						      return testSet
						 }())) {
						try _errHandler.recoverInline(self)
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(113)
						try expr(38)

						break
					case 3:
						_localctx = HouseContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(114)
						if (!(precpred(_ctx, 36))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 36)"))
						}
						setState(115)
						try match(RParser.Tokens.CARAT.rawValue)
						setState(116)
						try expr(36)

						break
					case 4:
						_localctx = ColonContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(117)
						if (!(precpred(_ctx, 34))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 34)"))
						}
						setState(118)
						try match(RParser.Tokens.COLON.rawValue)
						setState(119)
						try expr(35)

						break
					case 5:
						_localctx = UserExprContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(120)
						if (!(precpred(_ctx, 33))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 33)"))
						}
						setState(121)
						try match(RParser.Tokens.USER_OP.rawValue)
						setState(122)
						try expr(34)

						break
					case 6:
						_localctx = MulDivContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(123)
						if (!(precpred(_ctx, 32))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 32)"))
						}
						setState(124)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == RParser.Tokens.ASTERICK.rawValue || _la == RParser.Tokens.SLASH.rawValue
						      return testSet
						 }())) {
						try _errHandler.recoverInline(self)
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(125)
						try expr(33)

						break
					case 7:
						_localctx = PlusMinusContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(126)
						if (!(precpred(_ctx, 31))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 31)"))
						}
						setState(127)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == RParser.Tokens.PLUS.rawValue || _la == RParser.Tokens.MINUS.rawValue
						      return testSet
						 }())) {
						try _errHandler.recoverInline(self)
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(128)
						try expr(32)

						break
					case 8:
						_localctx = ComparisonContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(129)
						if (!(precpred(_ctx, 30))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 30)"))
						}
						setState(130)
						try rcomparison()
						setState(131)
						try expr(31)

						break
					case 9:
						_localctx = AndExprContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(133)
						if (!(precpred(_ctx, 28))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 28)"))
						}
						setState(134)
						try match(RParser.Tokens.AND_OP.rawValue)
						setState(135)
						try expr(29)

						break
					case 10:
						_localctx = OrExprContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(136)
						if (!(precpred(_ctx, 27))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 27)"))
						}
						setState(137)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == RParser.Tokens.BAR.rawValue || _la == RParser.Tokens.DBAR.rawValue
						      return testSet
						 }())) {
						try _errHandler.recoverInline(self)
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(138)
						try expr(28)

						break
					case 11:
						_localctx = ExpTildeExpContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(139)
						if (!(precpred(_ctx, 25))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 25)"))
						}
						setState(140)
						try match(RParser.Tokens.TILDE.rawValue)
						setState(141)
						try expr(26)

						break
					case 12:
						_localctx = AssignExpContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(142)
						if (!(precpred(_ctx, 24))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 24)"))
						}
						setState(143)
						try assignOp()
						setState(144)
						try expr(25)

						break
					case 13:
						_localctx = ListRefContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(146)
						if (!(precpred(_ctx, 40))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 40)"))
						}
						setState(147)
						try match(RParser.Tokens.DBRA_OPEN.rawValue)
						setState(148)
						try sublist()
						setState(149)
						try match(RParser.Tokens.BRA_CLOSE.rawValue)
						setState(150)
						try match(RParser.Tokens.BRA_CLOSE.rawValue)

						break
					case 14:
						_localctx = ArrayContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(152)
						if (!(precpred(_ctx, 39))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 39)"))
						}
						setState(153)
						try match(RParser.Tokens.BRA_OPEN.rawValue)
						setState(154)
						try sublist()
						setState(155)
						try match(RParser.Tokens.BRA_CLOSE.rawValue)

						break
					case 15:
						_localctx = CallFuncContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(157)
						if (!(precpred(_ctx, 22))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 22)"))
						}
						setState(158)
						try match(RParser.Tokens.PAR_OPEN.rawValue)
						setState(159)
						try sublist()
						setState(160)
						try match(RParser.Tokens.PAR_CLOSE.rawValue)

						break
					default: break
					}
			 
				}
				setState(166)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,6,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class ExprlistContext: ParserRuleContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func SEMI() -> [TerminalNode] {
				return getTokens(RParser.Tokens.SEMI.rawValue)
			}
			open
			func SEMI(_ i:Int) -> TerminalNode? {
				return getToken(RParser.Tokens.SEMI.rawValue, i)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(RParser.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(RParser.Tokens.NL.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_exprlist
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterExprlist(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitExprlist(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitExprlist(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitExprlist(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func exprlist() throws -> ExprlistContext {
		var _localctx: ExprlistContext = ExprlistContext(_ctx, getState())
		try enterRule(_localctx, 4, RParser.RULE_exprlist)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(178)
		 	try _errHandler.sync(self)
		 	switch (RParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .HEX:fallthrough
		 	case .INT:fallthrough
		 	case .FLOAT:fallthrough
		 	case .COMPLEX:fallthrough
		 	case .STRING:fallthrough
		 	case .ID:fallthrough
		 	case .IF:fallthrough
		 	case .REPEAT:fallthrough
		 	case .WHILE:fallthrough
		 	case .FOR:fallthrough
		 	case .BREAK:fallthrough
		 	case .NEXT:fallthrough
		 	case .FUNCTION:fallthrough
		 	case .PAR_OPEN:fallthrough
		 	case .BRC_OPEN:fallthrough
		 	case .QMARK:fallthrough
		 	case .PLUS:fallthrough
		 	case .MINUS:fallthrough
		 	case .NOT:fallthrough
		 	case .TILDE:fallthrough
		 	case .NULL:fallthrough
		 	case .NaN:fallthrough
		 	case .TRUE:fallthrough
		 	case .FALSE:fallthrough
		 	case .NA:fallthrough
		 	case .INF:fallthrough
		 	case .COMMENT:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(167)
		 		try expr(0)
		 		setState(174)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RParser.Tokens.SEMI.rawValue || _la == RParser.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(168)
		 			_la = try _input.LA(1)
		 			if (!(//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = _la == RParser.Tokens.SEMI.rawValue || _la == RParser.Tokens.NL.rawValue
		 			      return testSet
		 			 }())) {
		 			try _errHandler.recoverInline(self)
		 			}
		 			else {
		 				_errHandler.reportMatch(self)
		 				try consume()
		 			}
		 			setState(170)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (//closure
		 			 { () -> Bool in
		 			      var testSet: Bool = {  () -> Bool in
		 			   let testArray: [Int] = [_la, RParser.Tokens.HEX.rawValue,RParser.Tokens.INT.rawValue,RParser.Tokens.FLOAT.rawValue,RParser.Tokens.COMPLEX.rawValue,RParser.Tokens.STRING.rawValue,RParser.Tokens.ID.rawValue,RParser.Tokens.IF.rawValue,RParser.Tokens.REPEAT.rawValue,RParser.Tokens.WHILE.rawValue,RParser.Tokens.FOR.rawValue,RParser.Tokens.BREAK.rawValue,RParser.Tokens.NEXT.rawValue,RParser.Tokens.FUNCTION.rawValue,RParser.Tokens.PAR_OPEN.rawValue,RParser.Tokens.BRC_OPEN.rawValue,RParser.Tokens.QMARK.rawValue,RParser.Tokens.PLUS.rawValue,RParser.Tokens.MINUS.rawValue,RParser.Tokens.NOT.rawValue,RParser.Tokens.TILDE.rawValue,RParser.Tokens.NULL.rawValue]
		 			    return  Utils.testBitLeftShiftArray(testArray, 0)
		 			}()
		 			          testSet = testSet || {  () -> Bool in
		 			             let testArray: [Int] = [_la, RParser.Tokens.NaN.rawValue,RParser.Tokens.TRUE.rawValue,RParser.Tokens.FALSE.rawValue,RParser.Tokens.NA.rawValue,RParser.Tokens.INF.rawValue,RParser.Tokens.COMMENT.rawValue]
		 			              return  Utils.testBitLeftShiftArray(testArray, 64)
		 			          }()
		 			      return testSet
		 			 }()) {
		 				setState(169)
		 				try expr(0)

		 			}



		 			setState(176)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 		break

		 	case .BRC_CLOSE:
		 		try enterOuterAlt(_localctx, 2)

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

	public class FormlistContext: ParserRuleContext {
			open
			func form() -> [FormContext] {
				return getRuleContexts(FormContext.self)
			}
			open
			func form(_ i: Int) -> FormContext? {
				return getRuleContext(FormContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(RParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(RParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_formlist
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterFormlist(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitFormlist(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitFormlist(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitFormlist(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func formlist() throws -> FormlistContext {
		var _localctx: FormlistContext = FormlistContext(_ctx, getState())
		try enterRule(_localctx, 6, RParser.RULE_formlist)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(180)
		 	try form()
		 	setState(185)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == RParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(181)
		 		try match(RParser.Tokens.COMMA.rawValue)
		 		setState(182)
		 		try form()


		 		setState(187)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FormContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(RParser.Tokens.ID.rawValue, 0)
			}
			open
			func EQ_CHAR() -> TerminalNode? {
				return getToken(RParser.Tokens.EQ_CHAR.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func TRIPLE_DOT() -> TerminalNode? {
				return getToken(RParser.Tokens.TRIPLE_DOT.rawValue, 0)
			}
			open
			func PERIOD() -> TerminalNode? {
				return getToken(RParser.Tokens.PERIOD.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_form
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterForm(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitForm(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitForm(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitForm(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func form() throws -> FormContext {
		var _localctx: FormContext = FormContext(_ctx, getState())
		try enterRule(_localctx, 8, RParser.RULE_form)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(194)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,11, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(188)
		 		try match(RParser.Tokens.ID.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(189)
		 		try match(RParser.Tokens.ID.rawValue)
		 		setState(190)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)
		 		setState(191)
		 		try expr(0)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(192)
		 		try match(RParser.Tokens.TRIPLE_DOT.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(193)
		 		try match(RParser.Tokens.PERIOD.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SublistContext: ParserRuleContext {
			open
			func sub() -> [SubContext] {
				return getRuleContexts(SubContext.self)
			}
			open
			func sub(_ i: Int) -> SubContext? {
				return getRuleContext(SubContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(RParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(RParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_sublist
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterSublist(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitSublist(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitSublist(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitSublist(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func sublist() throws -> SublistContext {
		var _localctx: SublistContext = SublistContext(_ctx, getState())
		try enterRule(_localctx, 10, RParser.RULE_sublist)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(196)
		 	try sub()
		 	setState(201)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == RParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(197)
		 		try match(RParser.Tokens.COMMA.rawValue)
		 		setState(198)
		 		try sub()


		 		setState(203)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SubContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(RParser.Tokens.ID.rawValue, 0)
			}
			open
			func EQ_CHAR() -> TerminalNode? {
				return getToken(RParser.Tokens.EQ_CHAR.rawValue, 0)
			}
			open
			func STRING() -> TerminalNode? {
				return getToken(RParser.Tokens.STRING.rawValue, 0)
			}
			open
			func NULL() -> TerminalNode? {
				return getToken(RParser.Tokens.NULL.rawValue, 0)
			}
			open
			func TRIPLE_DOT() -> TerminalNode? {
				return getToken(RParser.Tokens.TRIPLE_DOT.rawValue, 0)
			}
			open
			func PERIOD() -> TerminalNode? {
				return getToken(RParser.Tokens.PERIOD.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_sub
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterSub(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitSub(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitSub(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitSub(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func sub() throws -> SubContext {
		var _localctx: SubContext = SubContext(_ctx, getState())
		try enterRule(_localctx, 12, RParser.RULE_sub)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(223)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,13, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(204)
		 		try expr(0)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(205)
		 		try match(RParser.Tokens.ID.rawValue)
		 		setState(206)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(207)
		 		try match(RParser.Tokens.ID.rawValue)
		 		setState(208)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)
		 		setState(209)
		 		try expr(0)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(210)
		 		try match(RParser.Tokens.STRING.rawValue)
		 		setState(211)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(212)
		 		try match(RParser.Tokens.STRING.rawValue)
		 		setState(213)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)
		 		setState(214)
		 		try expr(0)

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(215)
		 		try match(RParser.Tokens.NULL.rawValue)
		 		setState(216)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(217)
		 		try match(RParser.Tokens.NULL.rawValue)
		 		setState(218)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)
		 		setState(219)
		 		try expr(0)

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(220)
		 		try match(RParser.Tokens.TRIPLE_DOT.rawValue)

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(221)
		 		try match(RParser.Tokens.PERIOD.rawValue)

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionCallContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func PAR_OPEN() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_OPEN.rawValue, 0)
			}
			open
			func sublist() -> SublistContext? {
				return getRuleContext(SublistContext.self, 0)
			}
			open
			func PAR_CLOSE() -> TerminalNode? {
				return getToken(RParser.Tokens.PAR_CLOSE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_functionCall
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterFunctionCall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitFunctionCall(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitFunctionCall(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitFunctionCall(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionCall() throws -> FunctionCallContext {
		var _localctx: FunctionCallContext = FunctionCallContext(_ctx, getState())
		try enterRule(_localctx, 14, RParser.RULE_functionCall)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(225)
		 	try expr(0)
		 	setState(226)
		 	try match(RParser.Tokens.PAR_OPEN.rawValue)
		 	setState(227)
		 	try sublist()
		 	setState(228)
		 	try match(RParser.Tokens.PAR_CLOSE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class RcomparisonContext: ParserRuleContext {
			open
			func LT() -> TerminalNode? {
				return getToken(RParser.Tokens.LT.rawValue, 0)
			}
			open
			func LTE() -> TerminalNode? {
				return getToken(RParser.Tokens.LTE.rawValue, 0)
			}
			open
			func GT() -> TerminalNode? {
				return getToken(RParser.Tokens.GT.rawValue, 0)
			}
			open
			func GTE() -> TerminalNode? {
				return getToken(RParser.Tokens.GTE.rawValue, 0)
			}
			open
			func EQUAL_OP() -> TerminalNode? {
				return getToken(RParser.Tokens.EQUAL_OP.rawValue, 0)
			}
			open
			func NOTEQUAL_OP() -> TerminalNode? {
				return getToken(RParser.Tokens.NOTEQUAL_OP.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_rcomparison
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterRcomparison(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitRcomparison(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitRcomparison(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitRcomparison(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func rcomparison() throws -> RcomparisonContext {
		var _localctx: RcomparisonContext = RcomparisonContext(_ctx, getState())
		try enterRule(_localctx, 16, RParser.RULE_rcomparison)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(230)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RParser.Tokens.LT.rawValue,RParser.Tokens.LTE.rawValue,RParser.Tokens.GT.rawValue,RParser.Tokens.GTE.rawValue,RParser.Tokens.EQUAL_OP.rawValue,RParser.Tokens.NOTEQUAL_OP.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
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

	public class AssignOpContext: ParserRuleContext {
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(RParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func DASSIGN() -> TerminalNode? {
				return getToken(RParser.Tokens.DASSIGN.rawValue, 0)
			}
			open
			func RASSIGN() -> TerminalNode? {
				return getToken(RParser.Tokens.RASSIGN.rawValue, 0)
			}
			open
			func DRASSIGN() -> TerminalNode? {
				return getToken(RParser.Tokens.DRASSIGN.rawValue, 0)
			}
			open
			func EQ_CHAR() -> TerminalNode? {
				return getToken(RParser.Tokens.EQ_CHAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_assignOp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterAssignOp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitAssignOp(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitAssignOp(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitAssignOp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func assignOp() throws -> AssignOpContext {
		var _localctx: AssignOpContext = AssignOpContext(_ctx, getState())
		try enterRule(_localctx, 18, RParser.RULE_assignOp)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(232)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RParser.Tokens.ASSIGN.rawValue,RParser.Tokens.DASSIGN.rawValue,RParser.Tokens.RASSIGN.rawValue,RParser.Tokens.DRASSIGN.rawValue,RParser.Tokens.EQ_CHAR.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
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

	public class NumberContext: ParserRuleContext {
			open
			func INT() -> TerminalNode? {
				return getToken(RParser.Tokens.INT.rawValue, 0)
			}
			open
			func FLOAT() -> TerminalNode? {
				return getToken(RParser.Tokens.FLOAT.rawValue, 0)
			}
			open
			func COMPLEX() -> TerminalNode? {
				return getToken(RParser.Tokens.COMPLEX.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_number
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNumber(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNumber(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNumber(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNumber(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func number() throws -> NumberContext {
		var _localctx: NumberContext = NumberContext(_ctx, getState())
		try enterRule(_localctx, 20, RParser.RULE_number)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(234)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RParser.Tokens.INT.rawValue,RParser.Tokens.FLOAT.rawValue,RParser.Tokens.COMPLEX.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
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

	public class RcommentContext: ParserRuleContext {
			open
			func COMMENT() -> TerminalNode? {
				return getToken(RParser.Tokens.COMMENT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_rcomment
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterRcomment(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitRcomment(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitRcomment(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitRcomment(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func rcomment() throws -> RcommentContext {
		var _localctx: RcommentContext = RcommentContext(_ctx, getState())
		try enterRule(_localctx, 22, RParser.RULE_rcomment)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(236)
		 	try match(RParser.Tokens.COMMENT.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  1:
			return try expr_sempred(_localctx?.castdown(ExprContext.self), predIndex)
	    default: return true
		}
	}
	private func expr_sempred(_ _localctx: ExprContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 38)
		    case 1:return precpred(_ctx, 37)
		    case 2:return precpred(_ctx, 36)
		    case 3:return precpred(_ctx, 34)
		    case 4:return precpred(_ctx, 33)
		    case 5:return precpred(_ctx, 32)
		    case 6:return precpred(_ctx, 31)
		    case 7:return precpred(_ctx, 30)
		    case 8:return precpred(_ctx, 28)
		    case 9:return precpred(_ctx, 27)
		    case 10:return precpred(_ctx, 25)
		    case 11:return precpred(_ctx, 24)
		    case 12:return precpred(_ctx, 40)
		    case 13:return precpred(_ctx, 39)
		    case 14:return precpred(_ctx, 22)
		    default: return true
		}
	}


	public
	static let _serializedATN = RParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}