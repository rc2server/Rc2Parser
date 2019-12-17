// Generated from RFilter.g4 by ANTLR 4.7.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link RFilter}.
 */
public protocol RFilterListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link RFilter#stream}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStream(_ ctx: RFilter.StreamContext)
	/**
	 * Exit a parse tree produced by {@link RFilter#stream}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStream(_ ctx: RFilter.StreamContext)
	/**
	 * Enter a parse tree produced by {@link RFilter#eat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEat(_ ctx: RFilter.EatContext)
	/**
	 * Exit a parse tree produced by {@link RFilter#eat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEat(_ ctx: RFilter.EatContext)
	/**
	 * Enter a parse tree produced by {@link RFilter#elem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterElem(_ ctx: RFilter.ElemContext)
	/**
	 * Exit a parse tree produced by {@link RFilter#elem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitElem(_ ctx: RFilter.ElemContext)
	/**
	 * Enter a parse tree produced by {@link RFilter#comment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterComment(_ ctx: RFilter.CommentContext)
	/**
	 * Exit a parse tree produced by {@link RFilter#comment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitComment(_ ctx: RFilter.CommentContext)
	/**
	 * Enter a parse tree produced by {@link RFilter#atom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAtom(_ ctx: RFilter.AtomContext)
	/**
	 * Exit a parse tree produced by {@link RFilter#atom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAtom(_ ctx: RFilter.AtomContext)
	/**
	 * Enter a parse tree produced by {@link RFilter#op}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOp(_ ctx: RFilter.OpContext)
	/**
	 * Exit a parse tree produced by {@link RFilter#op}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOp(_ ctx: RFilter.OpContext)
}