// Generated from Rc2Lexer.g4 by ANTLR 4.7.2
import Antlr4

open class Rc2Lexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = Rc2Lexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(Rc2Lexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let CODE_START=1, CODE_ARG=2, EQ_START=3, IEQ_START=4, IC_START=5, 
            MDOWN=6, IC_END=7, IC_CODE=8, EQ_END=9, EQ_CODE=10, IEQ_CODE=11, 
            IEQ_END=12, CODE_END=13, NL=14, CODE=15, NOT_BACKTICK=16

	public
	static let IN_ICODE=1, IN_EQ=2, IN_IN_EQ=3, IN_CODE=4
	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE", "IN_ICODE", "IN_EQ", "IN_IN_EQ", "IN_CODE"
	]

	public
	static let ruleNames: [String] = [
		"CODE_START", "CODE_ARG", "EQ_START", "IEQ_START", "IC_START", "MDOWN", 
		"IC_END", "IC_CODE", "EQ_END", "EQ_CODE", "IEQ_CODE", "IEQ_END", "CODE_END", 
		"NL", "CODE", "NOT_BACKTICK", "ANY"
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
	func getVocabulary() -> Vocabulary {
		return Rc2Lexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, Rc2Lexer._ATN, Rc2Lexer._decisionToDFA, Rc2Lexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "Rc2Lexer.g4" }

	override open
	func getRuleNames() -> [String] { return Rc2Lexer.ruleNames }

	override open
	func getSerializedATN() -> String { return Rc2Lexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return Rc2Lexer.channelNames }

	override open
	func getModeNames() -> [String] { return Rc2Lexer.modeNames }

	override open
	func getATN() -> ATN { return Rc2Lexer._ATN }

	override open
	func sempred(_ _localctx: RuleContext?, _  ruleIndex: Int,_   predIndex: Int) throws -> Bool {
		switch (ruleIndex) {
		case 0:
			return try CODE_START_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 2:
			return try EQ_START_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 3:
			return try IEQ_START_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 12:
			return try CODE_END_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		default: return true
		}
	}
	private func CODE_START_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return getCharPositionInLine() == 0
		    default: return true
		}
	}
	private func EQ_START_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 1:return  isEQStart() 
		    default: return true
		}
	}
	private func IEQ_START_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 2:return  isInlineEqStart() 
		    default: return true
		}
	}
	private func CODE_END_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 3:return getCharPositionInLine() == 0
		    default: return true
		}
	}


	public
	static let _serializedATN: String = Rc2LexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}