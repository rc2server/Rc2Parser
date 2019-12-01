// Generated from Rc2RawParser.g4 by ANTLR 4.7.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link Rc2RawParser}.
 */
public protocol Rc2RawParserListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link Rc2RawParser#document}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDocument(_ ctx: Rc2RawParser.DocumentContext)
	/**
	 * Exit a parse tree produced by {@link Rc2RawParser#document}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDocument(_ ctx: Rc2RawParser.DocumentContext)
	/**
	 * Enter a parse tree produced by {@link Rc2RawParser#chunk}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterChunk(_ ctx: Rc2RawParser.ChunkContext)
	/**
	 * Exit a parse tree produced by {@link Rc2RawParser#chunk}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitChunk(_ ctx: Rc2RawParser.ChunkContext)
	/**
	 * Enter a parse tree produced by {@link Rc2RawParser#mdown}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMdown(_ ctx: Rc2RawParser.MdownContext)
	/**
	 * Exit a parse tree produced by {@link Rc2RawParser#mdown}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMdown(_ ctx: Rc2RawParser.MdownContext)
	/**
	 * Enter a parse tree produced by {@link Rc2RawParser#code}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCode(_ ctx: Rc2RawParser.CodeContext)
	/**
	 * Exit a parse tree produced by {@link Rc2RawParser#code}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCode(_ ctx: Rc2RawParser.CodeContext)
	/**
	 * Enter a parse tree produced by {@link Rc2RawParser#inlineCode}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInlineCode(_ ctx: Rc2RawParser.InlineCodeContext)
	/**
	 * Exit a parse tree produced by {@link Rc2RawParser#inlineCode}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInlineCode(_ ctx: Rc2RawParser.InlineCodeContext)
	/**
	 * Enter a parse tree produced by {@link Rc2RawParser#inlineEQ}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInlineEQ(_ ctx: Rc2RawParser.InlineEQContext)
	/**
	 * Exit a parse tree produced by {@link Rc2RawParser#inlineEQ}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInlineEQ(_ ctx: Rc2RawParser.InlineEQContext)
	/**
	 * Enter a parse tree produced by {@link Rc2RawParser#equation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEquation(_ ctx: Rc2RawParser.EquationContext)
	/**
	 * Exit a parse tree produced by {@link Rc2RawParser#equation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEquation(_ ctx: Rc2RawParser.EquationContext)
}