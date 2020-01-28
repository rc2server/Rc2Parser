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
                 NOT = 36, PERCENT = 37, HASH = 38, BAR = 39, DBAR = 40, 
                 AMP = 41, DAMP = 42, COLEQ = 43, ASSIGN = 44, DASSIGN = 45, 
                 RASSIGN = 46, DRASSIGN = 47, EQ_CHAR = 48, TRIPLE_COLON = 49, 
                 DOUBLE_COLON = 50, COLON = 51, DOLLAR_CHAR = 52, AT_CHAR = 53, 
                 TILDE = 54, USCORE = 55, PERIOD = 56, SQUOTE = 57, DQUOTE = 58, 
                 TRIPLE_DOT = 59, COMMA = 60, BACKTICK = 61, SEMI = 62, 
                 CARAT = 63, NULL = 64, NaN = 65, TRUE = 66, FALSE = 67, 
                 NA = 68, INF = 69, USER_OP = 70, COMMENT = 71, NL = 72, 
                 WS = 73
	}

	public
	static let RULE_prog = 0, RULE_expr_or_assign = 1, RULE_expr = 2, RULE_exprlist = 3, 
            RULE_formlist = 4, RULE_form = 5, RULE_sublist = 6, RULE_sub = 7, 
            RULE_functionCall = 8, RULE_rcomparison = 9, RULE_assignOp = 10, 
            RULE_number = 11, RULE_rcomment = 12, RULE_keyword = 13

	public
	static let ruleNames: [String] = [
		"prog", "expr_or_assign", "expr", "exprlist", "formlist", "form", "sublist", 
		"sub", "functionCall", "rcomparison", "assignOp", "number", "rcomment", 
		"keyword"
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
		"BACKTICK", "SEMI", "CARAT", "NULL", "NaN", "TRUE", "FALSE", "NA", "INF", 
		"USER_OP", "COMMENT", "NL", "WS"
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
			func expr_or_assign() -> [Expr_or_assignContext] {
				return getRuleContexts(Expr_or_assignContext.self)
			}
			open
			func expr_or_assign(_ i: Int) -> Expr_or_assignContext? {
				return getRuleContext(Expr_or_assignContext.self, i)
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
		 	setState(38)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, RParser.Tokens.HEX.rawValue,RParser.Tokens.INT.rawValue,RParser.Tokens.FLOAT.rawValue,RParser.Tokens.COMPLEX.rawValue,RParser.Tokens.STRING.rawValue,RParser.Tokens.ID.rawValue,RParser.Tokens.IF.rawValue,RParser.Tokens.ELSE.rawValue,RParser.Tokens.REPEAT.rawValue,RParser.Tokens.WHILE.rawValue,RParser.Tokens.FOR.rawValue,RParser.Tokens.IN.rawValue,RParser.Tokens.BREAK.rawValue,RParser.Tokens.NEXT.rawValue,RParser.Tokens.FUNCTION.rawValue,RParser.Tokens.PAR_OPEN.rawValue,RParser.Tokens.BRC_OPEN.rawValue,RParser.Tokens.QMARK.rawValue,RParser.Tokens.PLUS.rawValue,RParser.Tokens.MINUS.rawValue,RParser.Tokens.NOT.rawValue,RParser.Tokens.TILDE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, RParser.Tokens.NULL.rawValue,RParser.Tokens.NaN.rawValue,RParser.Tokens.TRUE.rawValue,RParser.Tokens.FALSE.rawValue,RParser.Tokens.NA.rawValue,RParser.Tokens.INF.rawValue,RParser.Tokens.COMMENT.rawValue,RParser.Tokens.NL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 64)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(36)
		 		try _errHandler.sync(self)
		 		switch (RParser.Tokens(rawValue: try _input.LA(1))!) {
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
		 			setState(28)
		 			try expr_or_assign()
		 			setState(32)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
		 			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 				if ( _alt==1 ) {
		 					setState(29)
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
		 				setState(34)
		 				try _errHandler.sync(self)
		 				_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
		 			}

		 			break

		 		case .NL:
		 			setState(35)
		 			try match(RParser.Tokens.NL.rawValue)

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 		setState(40)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(41)
		 	try match(RParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Expr_or_assignContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func assignOp() -> AssignOpContext? {
				return getRuleContext(AssignOpContext.self, 0)
			}
			open
			func expr_or_assign() -> Expr_or_assignContext? {
				return getRuleContext(Expr_or_assignContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_expr_or_assign
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterExpr_or_assign(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitExpr_or_assign(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitExpr_or_assign(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitExpr_or_assign(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func expr_or_assign() throws -> Expr_or_assignContext {
		var _localctx: Expr_or_assignContext = Expr_or_assignContext(_ctx, getState())
		try enterRule(_localctx, 2, RParser.RULE_expr_or_assign)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(48)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,3, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(43)
		 		try expr(0)
		 		setState(44)
		 		try assignOp()
		 		setState(45)
		 		try expr_or_assign()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(47)
		 		try expr(0)

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
	public class KeywordRuleContext: ExprContext {
			open
			func keyword() -> KeywordContext? {
				return getRuleContext(KeywordContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterKeywordRule(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitKeywordRule(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitKeywordRule(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitKeywordRule(self)
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
		var _startState: Int = 4
		try enterRecursionRule(_localctx, 4, RParser.RULE_expr, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(110)
			try _errHandler.sync(self)
			switch(try getInterpreter().adaptivePredict(_input,5, _ctx)) {
			case 1:
				_localctx = PlusNegContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(51)
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
				setState(52)
				try expr(28)

				break
			case 2:
				_localctx = CommentContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(53)
				try rcomment()

				break
			case 3:
				_localctx = NotExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(54)
				try match(RParser.Tokens.NOT.rawValue)
				setState(55)
				try expr(21)

				break
			case 4:
				_localctx = TildeExpContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(56)
				try match(RParser.Tokens.TILDE.rawValue)
				setState(57)
				try expr(18)

				break
			case 5:
				_localctx = DefineFuncContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(58)
				try match(RParser.Tokens.FUNCTION.rawValue)
				setState(59)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(61)
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
					setState(60)
					try formlist()

				}

				setState(63)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(64)
				try expr(15)

				break
			case 6:
				_localctx = CompoundStmtContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(65)
				try match(RParser.Tokens.BRC_OPEN.rawValue)
				setState(66)
				try exprlist()
				setState(67)
				try match(RParser.Tokens.BRC_CLOSE.rawValue)

				break
			case 7:
				_localctx = IfStmtContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(69)
				try match(RParser.Tokens.IF.rawValue)
				setState(70)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(71)
				try expr(0)
				setState(72)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(73)
				try expr(12)

				break
			case 8:
				_localctx = IfelseStmtContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(75)
				try match(RParser.Tokens.IF.rawValue)
				setState(76)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(77)
				try expr(0)
				setState(78)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(79)
				try expr(0)
				setState(80)
				try match(RParser.Tokens.ELSE.rawValue)
				setState(81)
				try expr(11)

				break
			case 9:
				_localctx = ForLoopContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(83)
				try match(RParser.Tokens.FOR.rawValue)
				setState(84)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(85)
				try match(RParser.Tokens.ID.rawValue)
				setState(86)
				try match(RParser.Tokens.IN.rawValue)
				setState(87)
				try expr(0)
				setState(88)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(89)
				try expr(10)

				break
			case 10:
				_localctx = WhileLoopContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(91)
				try match(RParser.Tokens.WHILE.rawValue)
				setState(92)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(93)
				try expr(0)
				setState(94)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)
				setState(95)
				try expr(9)

				break
			case 11:
				_localctx = RepeatLoopContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(97)
				try match(RParser.Tokens.REPEAT.rawValue)
				setState(98)
				try expr(8)

				break
			case 12:
				_localctx = HelpRequestContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(99)
				try match(RParser.Tokens.QMARK.rawValue)
				setState(100)
				try expr(7)

				break
			case 13:
				_localctx = KeywordRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(101)
				try keyword()

				break
			case 14:
				_localctx = ListExpContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(102)
				try match(RParser.Tokens.PAR_OPEN.rawValue)
				setState(103)
				try expr(0)
				setState(104)
				try match(RParser.Tokens.PAR_CLOSE.rawValue)

				break
			case 15:
				_localctx = IdRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(106)
				try match(RParser.Tokens.ID.rawValue)

				break
			case 16:
				_localctx = StringRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(107)
				try match(RParser.Tokens.STRING.rawValue)

				break
			case 17:
				_localctx = HexRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(108)
				try match(RParser.Tokens.HEX.rawValue)

				break
			case 18:
				_localctx = NumRuleContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(109)
				try number()

				break
			default: break
			}
			_ctx!.stop = try _input.LT(-1)
			setState(168)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,7,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(166)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,6, _ctx)) {
					case 1:
						_localctx = DescendantContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(112)
						if (!(precpred(_ctx, 31))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 31)"))
						}
						setState(113)
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
						setState(114)
						try expr(32)

						break
					case 2:
						_localctx = DollarOrAtContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(115)
						if (!(precpred(_ctx, 30))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 30)"))
						}
						setState(116)
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
						setState(117)
						try expr(31)

						break
					case 3:
						_localctx = HouseContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(118)
						if (!(precpred(_ctx, 29))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 29)"))
						}
						setState(119)
						try match(RParser.Tokens.CARAT.rawValue)
						setState(120)
						try expr(29)

						break
					case 4:
						_localctx = ColonContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(121)
						if (!(precpred(_ctx, 27))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 27)"))
						}
						setState(122)
						try match(RParser.Tokens.COLON.rawValue)
						setState(123)
						try expr(28)

						break
					case 5:
						_localctx = UserExprContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(124)
						if (!(precpred(_ctx, 26))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 26)"))
						}
						setState(125)
						try match(RParser.Tokens.USER_OP.rawValue)
						setState(126)
						try expr(27)

						break
					case 6:
						_localctx = MulDivContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(127)
						if (!(precpred(_ctx, 25))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 25)"))
						}
						setState(128)
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
						setState(129)
						try expr(26)

						break
					case 7:
						_localctx = PlusMinusContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(130)
						if (!(precpred(_ctx, 24))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 24)"))
						}
						setState(131)
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
						setState(132)
						try expr(25)

						break
					case 8:
						_localctx = ComparisonContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(133)
						if (!(precpred(_ctx, 23))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 23)"))
						}
						setState(134)
						try rcomparison()
						setState(135)
						try expr(24)

						break
					case 9:
						_localctx = AndExprContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(137)
						if (!(precpred(_ctx, 20))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 20)"))
						}
						setState(138)
						try match(RParser.Tokens.AND_OP.rawValue)
						setState(139)
						try expr(21)

						break
					case 10:
						_localctx = OrExprContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(140)
						if (!(precpred(_ctx, 19))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 19)"))
						}
						setState(141)
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
						setState(142)
						try expr(20)

						break
					case 11:
						_localctx = ExpTildeExpContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(143)
						if (!(precpred(_ctx, 17))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 17)"))
						}
						setState(144)
						try match(RParser.Tokens.TILDE.rawValue)
						setState(145)
						try expr(18)

						break
					case 12:
						_localctx = AssignExpContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(146)
						if (!(precpred(_ctx, 16))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 16)"))
						}
						setState(147)
						try assignOp()
						setState(148)
						try expr(17)

						break
					case 13:
						_localctx = ListRefContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(150)
						if (!(precpred(_ctx, 33))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 33)"))
						}
						setState(151)
						try match(RParser.Tokens.DBRA_OPEN.rawValue)
						setState(152)
						try sublist()
						setState(153)
						try match(RParser.Tokens.BRA_CLOSE.rawValue)
						setState(154)
						try match(RParser.Tokens.BRA_CLOSE.rawValue)

						break
					case 14:
						_localctx = ArrayContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(156)
						if (!(precpred(_ctx, 32))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 32)"))
						}
						setState(157)
						try match(RParser.Tokens.BRA_OPEN.rawValue)
						setState(158)
						try sublist()
						setState(159)
						try match(RParser.Tokens.BRA_CLOSE.rawValue)

						break
					case 15:
						_localctx = CallFuncContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, RParser.RULE_expr)
						setState(161)
						if (!(precpred(_ctx, 14))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 14)"))
						}
						setState(162)
						try match(RParser.Tokens.PAR_OPEN.rawValue)
						setState(163)
						try sublist()
						setState(164)
						try match(RParser.Tokens.PAR_CLOSE.rawValue)

						break
					default: break
					}
			 
				}
				setState(170)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,7,_ctx)
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
		try enterRule(_localctx, 6, RParser.RULE_exprlist)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(182)
		 	try _errHandler.sync(self)
		 	switch (RParser.Tokens(rawValue: try _input.LA(1))!) {
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
		 		setState(171)
		 		try expr(0)
		 		setState(178)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == RParser.Tokens.SEMI.rawValue || _la == RParser.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(172)
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
		 			setState(174)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (//closure
		 			 { () -> Bool in
		 			      var testSet: Bool = {  () -> Bool in
		 			   let testArray: [Int] = [_la, RParser.Tokens.HEX.rawValue,RParser.Tokens.INT.rawValue,RParser.Tokens.FLOAT.rawValue,RParser.Tokens.COMPLEX.rawValue,RParser.Tokens.STRING.rawValue,RParser.Tokens.ID.rawValue,RParser.Tokens.IF.rawValue,RParser.Tokens.ELSE.rawValue,RParser.Tokens.REPEAT.rawValue,RParser.Tokens.WHILE.rawValue,RParser.Tokens.FOR.rawValue,RParser.Tokens.IN.rawValue,RParser.Tokens.BREAK.rawValue,RParser.Tokens.NEXT.rawValue,RParser.Tokens.FUNCTION.rawValue,RParser.Tokens.PAR_OPEN.rawValue,RParser.Tokens.BRC_OPEN.rawValue,RParser.Tokens.QMARK.rawValue,RParser.Tokens.PLUS.rawValue,RParser.Tokens.MINUS.rawValue,RParser.Tokens.NOT.rawValue,RParser.Tokens.TILDE.rawValue]
		 			    return  Utils.testBitLeftShiftArray(testArray, 0)
		 			}()
		 			          testSet = testSet || {  () -> Bool in
		 			             let testArray: [Int] = [_la, RParser.Tokens.NULL.rawValue,RParser.Tokens.NaN.rawValue,RParser.Tokens.TRUE.rawValue,RParser.Tokens.FALSE.rawValue,RParser.Tokens.NA.rawValue,RParser.Tokens.INF.rawValue,RParser.Tokens.COMMENT.rawValue]
		 			              return  Utils.testBitLeftShiftArray(testArray, 64)
		 			          }()
		 			      return testSet
		 			 }()) {
		 				setState(173)
		 				try expr(0)

		 			}



		 			setState(180)
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
		try enterRule(_localctx, 8, RParser.RULE_formlist)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(184)
		 	try form()
		 	setState(189)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == RParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(185)
		 		try match(RParser.Tokens.COMMA.rawValue)
		 		setState(186)
		 		try form()


		 		setState(191)
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
		try enterRule(_localctx, 10, RParser.RULE_form)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(198)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,12, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(192)
		 		try match(RParser.Tokens.ID.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(193)
		 		try match(RParser.Tokens.ID.rawValue)
		 		setState(194)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)
		 		setState(195)
		 		try expr(0)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(196)
		 		try match(RParser.Tokens.TRIPLE_DOT.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(197)
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
		try enterRule(_localctx, 12, RParser.RULE_sublist)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(200)
		 	try sub()
		 	setState(205)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == RParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(201)
		 		try match(RParser.Tokens.COMMA.rawValue)
		 		setState(202)
		 		try sub()


		 		setState(207)
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
		try enterRule(_localctx, 14, RParser.RULE_sub)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(227)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,14, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(208)
		 		try expr(0)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(209)
		 		try match(RParser.Tokens.ID.rawValue)
		 		setState(210)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(211)
		 		try match(RParser.Tokens.ID.rawValue)
		 		setState(212)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)
		 		setState(213)
		 		try expr(0)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(214)
		 		try match(RParser.Tokens.STRING.rawValue)
		 		setState(215)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(216)
		 		try match(RParser.Tokens.STRING.rawValue)
		 		setState(217)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)
		 		setState(218)
		 		try expr(0)

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(219)
		 		try match(RParser.Tokens.NULL.rawValue)
		 		setState(220)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(221)
		 		try match(RParser.Tokens.NULL.rawValue)
		 		setState(222)
		 		try match(RParser.Tokens.EQ_CHAR.rawValue)
		 		setState(223)
		 		try expr(0)

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(224)
		 		try match(RParser.Tokens.TRIPLE_DOT.rawValue)

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(225)
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
		try enterRule(_localctx, 16, RParser.RULE_functionCall)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(229)
		 	try expr(0)
		 	setState(230)
		 	try match(RParser.Tokens.PAR_OPEN.rawValue)
		 	setState(231)
		 	try sublist()
		 	setState(232)
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
		try enterRule(_localctx, 18, RParser.RULE_rcomparison)
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
		try enterRule(_localctx, 20, RParser.RULE_assignOp)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(236)
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
		try enterRule(_localctx, 22, RParser.RULE_number)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(238)
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
		try enterRule(_localctx, 24, RParser.RULE_rcomment)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(240)
		 	try match(RParser.Tokens.COMMENT.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class KeywordContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return RParser.RULE_keyword
		}
	}
	public class ForKeywordContext: KeywordContext {
			open
			func FOR() -> TerminalNode? {
				return getToken(RParser.Tokens.FOR.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterForKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitForKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitForKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitForKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NullKeywordContext: KeywordContext {
			open
			func NULL() -> TerminalNode? {
				return getToken(RParser.Tokens.NULL.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNullKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNullKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNullKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNullKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class IfKeyWordContext: KeywordContext {
			open
			func IF() -> TerminalNode? {
				return getToken(RParser.Tokens.IF.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterIfKeyWord(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitIfKeyWord(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitIfKeyWord(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitIfKeyWord(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class InKeywordContext: KeywordContext {
			open
			func IN() -> TerminalNode? {
				return getToken(RParser.Tokens.IN.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterInKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitInKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitInKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitInKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class InfKeywordContext: KeywordContext {
			open
			func INF() -> TerminalNode? {
				return getToken(RParser.Tokens.INF.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterInfKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitInfKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitInfKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitInfKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NanKeywordContext: KeywordContext {
			open
			func NaN() -> TerminalNode? {
				return getToken(RParser.Tokens.NaN.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNanKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNanKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNanKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNanKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class BreakKeywordContext: KeywordContext {
			open
			func BREAK() -> TerminalNode? {
				return getToken(RParser.Tokens.BREAK.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterBreakKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitBreakKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitBreakKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitBreakKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class WhileKeywordContext: KeywordContext {
			open
			func WHILE() -> TerminalNode? {
				return getToken(RParser.Tokens.WHILE.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterWhileKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitWhileKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitWhileKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitWhileKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ElseKeywordContext: KeywordContext {
			open
			func ELSE() -> TerminalNode? {
				return getToken(RParser.Tokens.ELSE.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterElseKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitElseKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitElseKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitElseKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class FalseKeywordContext: KeywordContext {
			open
			func FALSE() -> TerminalNode? {
				return getToken(RParser.Tokens.FALSE.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterFalseKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitFalseKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitFalseKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitFalseKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NaKeywordContext: KeywordContext {
			open
			func NA() -> TerminalNode? {
				return getToken(RParser.Tokens.NA.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterNaKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitNaKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitNaKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitNaKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class RepeatKeywordContext: KeywordContext {
			open
			func REPEAT() -> TerminalNode? {
				return getToken(RParser.Tokens.REPEAT.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterRepeatKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitRepeatKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitRepeatKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitRepeatKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class FunctionKeywordContext: KeywordContext {
			open
			func FUNCTION() -> TerminalNode? {
				return getToken(RParser.Tokens.FUNCTION.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterFunctionKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitFunctionKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitFunctionKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitFunctionKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class TrueKeywordContext: KeywordContext {
			open
			func TRUE() -> TerminalNode? {
				return getToken(RParser.Tokens.TRUE.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterTrueKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitTrueKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitTrueKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitTrueKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class HexKeywordContext: KeywordContext {
			open
			func NEXT() -> TerminalNode? {
				return getToken(RParser.Tokens.NEXT.rawValue, 0)
			}

		public
		init(_ ctx: KeywordContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.enterHexKeyword(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? RListener {
				listener.exitHexKeyword(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? RVisitor {
			    return visitor.visitHexKeyword(self)
			}
			else if let visitor = visitor as? RBaseVisitor {
			    return visitor.visitHexKeyword(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func keyword() throws -> KeywordContext {
		var _localctx: KeywordContext = KeywordContext(_ctx, getState())
		try enterRule(_localctx, 26, RParser.RULE_keyword)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(257)
		 	try _errHandler.sync(self)
		 	switch (RParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IF:
		 		_localctx =  IfKeyWordContext(_localctx);
		 		try enterOuterAlt(_localctx, 1)
		 		setState(242)
		 		try match(RParser.Tokens.IF.rawValue)

		 		break

		 	case .ELSE:
		 		_localctx =  ElseKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 2)
		 		setState(243)
		 		try match(RParser.Tokens.ELSE.rawValue)

		 		break

		 	case .REPEAT:
		 		_localctx =  RepeatKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 3)
		 		setState(244)
		 		try match(RParser.Tokens.REPEAT.rawValue)

		 		break

		 	case .WHILE:
		 		_localctx =  WhileKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 4)
		 		setState(245)
		 		try match(RParser.Tokens.WHILE.rawValue)

		 		break

		 	case .FOR:
		 		_localctx =  ForKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 5)
		 		setState(246)
		 		try match(RParser.Tokens.FOR.rawValue)

		 		break

		 	case .BREAK:
		 		_localctx =  BreakKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 6)
		 		setState(247)
		 		try match(RParser.Tokens.BREAK.rawValue)

		 		break

		 	case .IN:
		 		_localctx =  InKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 7)
		 		setState(248)
		 		try match(RParser.Tokens.IN.rawValue)

		 		break

		 	case .NEXT:
		 		_localctx =  HexKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 8)
		 		setState(249)
		 		try match(RParser.Tokens.NEXT.rawValue)

		 		break

		 	case .FUNCTION:
		 		_localctx =  FunctionKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 9)
		 		setState(250)
		 		try match(RParser.Tokens.FUNCTION.rawValue)

		 		break

		 	case .TRUE:
		 		_localctx =  TrueKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 10)
		 		setState(251)
		 		try match(RParser.Tokens.TRUE.rawValue)

		 		break

		 	case .FALSE:
		 		_localctx =  FalseKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 11)
		 		setState(252)
		 		try match(RParser.Tokens.FALSE.rawValue)

		 		break

		 	case .NA:
		 		_localctx =  NaKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 12)
		 		setState(253)
		 		try match(RParser.Tokens.NA.rawValue)

		 		break

		 	case .NaN:
		 		_localctx =  NanKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 13)
		 		setState(254)
		 		try match(RParser.Tokens.NaN.rawValue)

		 		break

		 	case .INF:
		 		_localctx =  InfKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 14)
		 		setState(255)
		 		try match(RParser.Tokens.INF.rawValue)

		 		break

		 	case .NULL:
		 		_localctx =  NullKeywordContext(_localctx);
		 		try enterOuterAlt(_localctx, 15)
		 		setState(256)
		 		try match(RParser.Tokens.NULL.rawValue)

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

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  2:
			return try expr_sempred(_localctx?.castdown(ExprContext.self), predIndex)
	    default: return true
		}
	}
	private func expr_sempred(_ _localctx: ExprContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 31)
		    case 1:return precpred(_ctx, 30)
		    case 2:return precpred(_ctx, 29)
		    case 3:return precpred(_ctx, 27)
		    case 4:return precpred(_ctx, 26)
		    case 5:return precpred(_ctx, 25)
		    case 6:return precpred(_ctx, 24)
		    case 7:return precpred(_ctx, 23)
		    case 8:return precpred(_ctx, 20)
		    case 9:return precpred(_ctx, 19)
		    case 10:return precpred(_ctx, 17)
		    case 11:return precpred(_ctx, 16)
		    case 12:return precpred(_ctx, 33)
		    case 13:return precpred(_ctx, 32)
		    case 14:return precpred(_ctx, 14)
		    default: return true
		}
	}


	public
	static let _serializedATN = RParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}