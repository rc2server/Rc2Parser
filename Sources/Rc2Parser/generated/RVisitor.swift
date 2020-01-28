// Generated from R.g4 by ANTLR 4.7.2
import Antlr4

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link RParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
open class RVisitor<T>: ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link RParser#prog}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitProg(_ ctx: RParser.ProgContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code assignment}
	 * labeled alternative in {@link RParser#expr_or_assign}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitAssignment(_ ctx: RParser.AssignmentContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code singleExp}
	 * labeled alternative in {@link RParser#expr_or_assign}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSingleExp(_ ctx: RParser.SingleExpContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code whileLoop}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitWhileLoop(_ ctx: RParser.WhileLoopContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code helpRequest}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitHelpRequest(_ ctx: RParser.HelpRequestContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code repeatLoop}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitRepeatLoop(_ ctx: RParser.RepeatLoopContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code expTildeExp}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitExpTildeExp(_ ctx: RParser.ExpTildeExpContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code listExp}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitListExp(_ ctx: RParser.ListExpContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code descendant}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitDescendant(_ ctx: RParser.DescendantContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code house}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitHouse(_ ctx: RParser.HouseContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code listRef}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitListRef(_ ctx: RParser.ListRefContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code mulDiv}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitMulDiv(_ ctx: RParser.MulDivContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code hexRule}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitHexRule(_ ctx: RParser.HexRuleContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code array}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitArray(_ ctx: RParser.ArrayContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code stringRule}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitStringRule(_ ctx: RParser.StringRuleContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code tildeExp}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTildeExp(_ ctx: RParser.TildeExpContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code compoundStmt}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitCompoundStmt(_ ctx: RParser.CompoundStmtContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code numRule}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNumRule(_ ctx: RParser.NumRuleContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code keywordRule}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitKeywordRule(_ ctx: RParser.KeywordRuleContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code forLoop}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitForLoop(_ ctx: RParser.ForLoopContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code idRule}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitIdRule(_ ctx: RParser.IdRuleContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code plusMinus}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPlusMinus(_ ctx: RParser.PlusMinusContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code defineFunc}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitDefineFunc(_ ctx: RParser.DefineFuncContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code comparison}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitComparison(_ ctx: RParser.ComparisonContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code assignExp}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitAssignExp(_ ctx: RParser.AssignExpContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code orExpr}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitOrExpr(_ ctx: RParser.OrExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code callFunc}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitCallFunc(_ ctx: RParser.CallFuncContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code ifelseStmt}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitIfelseStmt(_ ctx: RParser.IfelseStmtContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code notExpr}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNotExpr(_ ctx: RParser.NotExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitIfStmt(_ ctx: RParser.IfStmtContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code userExpr}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitUserExpr(_ ctx: RParser.UserExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code colon}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitColon(_ ctx: RParser.ColonContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code comment}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitComment(_ ctx: RParser.CommentContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code dollarOrAt}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitDollarOrAt(_ ctx: RParser.DollarOrAtContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code plusNeg}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPlusNeg(_ ctx: RParser.PlusNegContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code andExpr}
	 * labeled alternative in {@link RParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitAndExpr(_ ctx: RParser.AndExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#exprlist}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitExprlist(_ ctx: RParser.ExprlistContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#formlist}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitFormlist(_ ctx: RParser.FormlistContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#form}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitForm(_ ctx: RParser.FormContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#sublist}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSublist(_ ctx: RParser.SublistContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#sub}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSub(_ ctx: RParser.SubContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#functionCall}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitFunctionCall(_ ctx: RParser.FunctionCallContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#rcomparison}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitRcomparison(_ ctx: RParser.RcomparisonContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#assignOp}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitAssignOp(_ ctx: RParser.AssignOpContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#number}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNumber(_ ctx: RParser.NumberContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link RParser#rcomment}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitRcomment(_ ctx: RParser.RcommentContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code ifKeyWord}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitIfKeyWord(_ ctx: RParser.IfKeyWordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code elseKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitElseKeyword(_ ctx: RParser.ElseKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code repeatKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitRepeatKeyword(_ ctx: RParser.RepeatKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code whileKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitWhileKeyword(_ ctx: RParser.WhileKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code forKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitForKeyword(_ ctx: RParser.ForKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code breakKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitBreakKeyword(_ ctx: RParser.BreakKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code inKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitInKeyword(_ ctx: RParser.InKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code hexKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitHexKeyword(_ ctx: RParser.HexKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code functionKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitFunctionKeyword(_ ctx: RParser.FunctionKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code trueKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTrueKeyword(_ ctx: RParser.TrueKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code falseKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitFalseKeyword(_ ctx: RParser.FalseKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code naKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNaKeyword(_ ctx: RParser.NaKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code nanKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNanKeyword(_ ctx: RParser.NanKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code infKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitInfKeyword(_ ctx: RParser.InfKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code nullKeyword}
	 * labeled alternative in {@link RParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNullKeyword(_ ctx: RParser.NullKeywordContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

}