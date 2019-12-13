// Generated from R.g4 by ANTLR 4.7.2
import Antlr4

open class RLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = RLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(RLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let HEX=1, INT=2, FLOAT=3, COMPLEX=4, STRING=5, ID=6, IF=7, ELSE=8, 
            REPEAT=9, WHILE=10, FOR=11, IN=12, BREAK=13, NEXT=14, FUNCTION=15, 
            AND_OP=16, PAR_OPEN=17, PAR_CLOSE=18, BRA_OPEN=19, BRA_CLOSE=20, 
            DBRA_OPEN=21, DBRA_CLOSE=22, BRC_OPEN=23, BRC_CLOSE=24, QMARK=25, 
            PLUS=26, MINUS=27, ASTERICK=28, SLASH=29, LT=30, LTE=31, GT=32, 
            GTE=33, EQUAL_OP=34, NOTEQUAL_OP=35, NOT=36, PERCENT=37, BAR=38, 
            DBAR=39, AMP=40, DAMP=41, COLEQ=42, ASSIGN=43, DASSIGN=44, RASSIGN=45, 
            DRASSIGN=46, EQ_CHAR=47, TRIPLE_COLON=48, DOUBLE_COLON=49, COLON=50, 
            DOLLAR_CHAR=51, AT_CHAR=52, TILDE=53, USCORE=54, PERIOD=55, 
            SQUOTE=56, DQUOTE=57, TRIPLE_DOT=58, COMMA=59, BACKTICK=60, 
            SEMI=61, CARAT=62, NULL=63, NaN=64, TRUE=65, FALSE=66, NA=67, 
            INF=68, USER_OP=69, COMMENT=70, NL=71, WS=72

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"HEX", "INT", "HEXDIGIT", "FLOAT", "DIGIT", "EXP", "COMPLEX", "STRING", 
		"ESC", "UNICODE_ESCAPE", "OCTAL_ESCAPE", "HEX_ESCAPE", "ID", "LETTER", 
		"IF", "ELSE", "REPEAT", "WHILE", "FOR", "IN", "BREAK", "NEXT", "FUNCTION", 
		"AND_OP", "PAR_OPEN", "PAR_CLOSE", "BRA_OPEN", "BRA_CLOSE", "DBRA_OPEN", 
		"DBRA_CLOSE", "BRC_OPEN", "BRC_CLOSE", "QMARK", "PLUS", "MINUS", "ASTERICK", 
		"SLASH", "LT", "LTE", "GT", "GTE", "EQUAL_OP", "NOTEQUAL_OP", "NOT", "PERCENT", 
		"BAR", "DBAR", "AMP", "DAMP", "COLEQ", "ASSIGN", "DASSIGN", "RASSIGN", 
		"DRASSIGN", "EQ_CHAR", "TRIPLE_COLON", "DOUBLE_COLON", "COLON", "DOLLAR_CHAR", 
		"AT_CHAR", "TILDE", "USCORE", "PERIOD", "SQUOTE", "DQUOTE", "TRIPLE_DOT", 
		"COMMA", "BACKTICK", "SEMI", "CARAT", "NULL", "NaN", "TRUE", "FALSE", 
		"NA", "INF", "USER_OP", "COMMENT", "NL", "WS"
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
	func getVocabulary() -> Vocabulary {
		return RLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, RLexer._ATN, RLexer._decisionToDFA, RLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "R.g4" }

	override open
	func getRuleNames() -> [String] { return RLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return RLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return RLexer.channelNames }

	override open
	func getModeNames() -> [String] { return RLexer.modeNames }

	override open
	func getATN() -> ATN { return RLexer._ATN }


	public
	static let _serializedATN: String = RLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}