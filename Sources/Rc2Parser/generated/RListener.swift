// Generated from R.g4 by ANTLR 4.7.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link RParser}.
 */
public protocol RListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link RParser#prog}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProg(_ ctx: RParser.ProgContext)
	/**
	 * Exit a parse tree produced by {@link RParser#prog}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProg(_ ctx: RParser.ProgContext)
	/**
	 * Enter a parse tree produced by the {@code whileLoop}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWhileLoop(_ ctx: RParser.WhileLoopContext)
	/**
	 * Exit a parse tree produced by the {@code whileLoop}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWhileLoop(_ ctx: RParser.WhileLoopContext)
	/**
	 * Enter a parse tree produced by the {@code helpRequest}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHelpRequest(_ ctx: RParser.HelpRequestContext)
	/**
	 * Exit a parse tree produced by the {@code helpRequest}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHelpRequest(_ ctx: RParser.HelpRequestContext)
	/**
	 * Enter a parse tree produced by the {@code repeatLoop}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRepeatLoop(_ ctx: RParser.RepeatLoopContext)
	/**
	 * Exit a parse tree produced by the {@code repeatLoop}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRepeatLoop(_ ctx: RParser.RepeatLoopContext)
	/**
	 * Enter a parse tree produced by the {@code trueRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTrueRule(_ ctx: RParser.TrueRuleContext)
	/**
	 * Exit a parse tree produced by the {@code trueRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTrueRule(_ ctx: RParser.TrueRuleContext)
	/**
	 * Enter a parse tree produced by the {@code expTildeExp}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpTildeExp(_ ctx: RParser.ExpTildeExpContext)
	/**
	 * Exit a parse tree produced by the {@code expTildeExp}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpTildeExp(_ ctx: RParser.ExpTildeExpContext)
	/**
	 * Enter a parse tree produced by the {@code listExp}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterListExp(_ ctx: RParser.ListExpContext)
	/**
	 * Exit a parse tree produced by the {@code listExp}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitListExp(_ ctx: RParser.ListExpContext)
	/**
	 * Enter a parse tree produced by the {@code descendant}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDescendant(_ ctx: RParser.DescendantContext)
	/**
	 * Exit a parse tree produced by the {@code descendant}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDescendant(_ ctx: RParser.DescendantContext)
	/**
	 * Enter a parse tree produced by the {@code house}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHouse(_ ctx: RParser.HouseContext)
	/**
	 * Exit a parse tree produced by the {@code house}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHouse(_ ctx: RParser.HouseContext)
	/**
	 * Enter a parse tree produced by the {@code listRef}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterListRef(_ ctx: RParser.ListRefContext)
	/**
	 * Exit a parse tree produced by the {@code listRef}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitListRef(_ ctx: RParser.ListRefContext)
	/**
	 * Enter a parse tree produced by the {@code mulDiv}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMulDiv(_ ctx: RParser.MulDivContext)
	/**
	 * Exit a parse tree produced by the {@code mulDiv}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMulDiv(_ ctx: RParser.MulDivContext)
	/**
	 * Enter a parse tree produced by the {@code hexRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHexRule(_ ctx: RParser.HexRuleContext)
	/**
	 * Exit a parse tree produced by the {@code hexRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHexRule(_ ctx: RParser.HexRuleContext)
	/**
	 * Enter a parse tree produced by the {@code falseRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFalseRule(_ ctx: RParser.FalseRuleContext)
	/**
	 * Exit a parse tree produced by the {@code falseRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFalseRule(_ ctx: RParser.FalseRuleContext)
	/**
	 * Enter a parse tree produced by the {@code array}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArray(_ ctx: RParser.ArrayContext)
	/**
	 * Exit a parse tree produced by the {@code array}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArray(_ ctx: RParser.ArrayContext)
	/**
	 * Enter a parse tree produced by the {@code stringRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringRule(_ ctx: RParser.StringRuleContext)
	/**
	 * Exit a parse tree produced by the {@code stringRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringRule(_ ctx: RParser.StringRuleContext)
	/**
	 * Enter a parse tree produced by the {@code tildeExp}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTildeExp(_ ctx: RParser.TildeExpContext)
	/**
	 * Exit a parse tree produced by the {@code tildeExp}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTildeExp(_ ctx: RParser.TildeExpContext)
	/**
	 * Enter a parse tree produced by the {@code compoundStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCompoundStmt(_ ctx: RParser.CompoundStmtContext)
	/**
	 * Exit a parse tree produced by the {@code compoundStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCompoundStmt(_ ctx: RParser.CompoundStmtContext)
	/**
	 * Enter a parse tree produced by the {@code numRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNumRule(_ ctx: RParser.NumRuleContext)
	/**
	 * Exit a parse tree produced by the {@code numRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNumRule(_ ctx: RParser.NumRuleContext)
	/**
	 * Enter a parse tree produced by the {@code forLoop}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterForLoop(_ ctx: RParser.ForLoopContext)
	/**
	 * Exit a parse tree produced by the {@code forLoop}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitForLoop(_ ctx: RParser.ForLoopContext)
	/**
	 * Enter a parse tree produced by the {@code idRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIdRule(_ ctx: RParser.IdRuleContext)
	/**
	 * Exit a parse tree produced by the {@code idRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIdRule(_ ctx: RParser.IdRuleContext)
	/**
	 * Enter a parse tree produced by the {@code plusMinus}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPlusMinus(_ ctx: RParser.PlusMinusContext)
	/**
	 * Exit a parse tree produced by the {@code plusMinus}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPlusMinus(_ ctx: RParser.PlusMinusContext)
	/**
	 * Enter a parse tree produced by the {@code defineFunc}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefineFunc(_ ctx: RParser.DefineFuncContext)
	/**
	 * Exit a parse tree produced by the {@code defineFunc}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefineFunc(_ ctx: RParser.DefineFuncContext)
	/**
	 * Enter a parse tree produced by the {@code comparison}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterComparison(_ ctx: RParser.ComparisonContext)
	/**
	 * Exit a parse tree produced by the {@code comparison}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitComparison(_ ctx: RParser.ComparisonContext)
	/**
	 * Enter a parse tree produced by the {@code assignExp}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssignExp(_ ctx: RParser.AssignExpContext)
	/**
	 * Exit a parse tree produced by the {@code assignExp}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssignExp(_ ctx: RParser.AssignExpContext)
	/**
	 * Enter a parse tree produced by the {@code notNumber}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNotNumber(_ ctx: RParser.NotNumberContext)
	/**
	 * Exit a parse tree produced by the {@code notNumber}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNotNumber(_ ctx: RParser.NotNumberContext)
	/**
	 * Enter a parse tree produced by the {@code orExpr}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOrExpr(_ ctx: RParser.OrExprContext)
	/**
	 * Exit a parse tree produced by the {@code orExpr}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOrExpr(_ ctx: RParser.OrExprContext)
	/**
	 * Enter a parse tree produced by the {@code callFunc}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCallFunc(_ ctx: RParser.CallFuncContext)
	/**
	 * Exit a parse tree produced by the {@code callFunc}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCallFunc(_ ctx: RParser.CallFuncContext)
	/**
	 * Enter a parse tree produced by the {@code ifelseStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIfelseStmt(_ ctx: RParser.IfelseStmtContext)
	/**
	 * Exit a parse tree produced by the {@code ifelseStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIfelseStmt(_ ctx: RParser.IfelseStmtContext)
	/**
	 * Enter a parse tree produced by the {@code notExpr}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNotExpr(_ ctx: RParser.NotExprContext)
	/**
	 * Exit a parse tree produced by the {@code notExpr}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNotExpr(_ ctx: RParser.NotExprContext)
	/**
	 * Enter a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIfStmt(_ ctx: RParser.IfStmtContext)
	/**
	 * Exit a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIfStmt(_ ctx: RParser.IfStmtContext)
	/**
	 * Enter a parse tree produced by the {@code userExpr}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUserExpr(_ ctx: RParser.UserExprContext)
	/**
	 * Exit a parse tree produced by the {@code userExpr}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUserExpr(_ ctx: RParser.UserExprContext)
	/**
	 * Enter a parse tree produced by the {@code breakStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBreakStmt(_ ctx: RParser.BreakStmtContext)
	/**
	 * Exit a parse tree produced by the {@code breakStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBreakStmt(_ ctx: RParser.BreakStmtContext)
	/**
	 * Enter a parse tree produced by the {@code colon}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterColon(_ ctx: RParser.ColonContext)
	/**
	 * Exit a parse tree produced by the {@code colon}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitColon(_ ctx: RParser.ColonContext)
	/**
	 * Enter a parse tree produced by the {@code infinity}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInfinity(_ ctx: RParser.InfinityContext)
	/**
	 * Exit a parse tree produced by the {@code infinity}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInfinity(_ ctx: RParser.InfinityContext)
	/**
	 * Enter a parse tree produced by the {@code comment}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterComment(_ ctx: RParser.CommentContext)
	/**
	 * Exit a parse tree produced by the {@code comment}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitComment(_ ctx: RParser.CommentContext)
	/**
	 * Enter a parse tree produced by the {@code naRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNaRule(_ ctx: RParser.NaRuleContext)
	/**
	 * Exit a parse tree produced by the {@code naRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNaRule(_ ctx: RParser.NaRuleContext)
	/**
	 * Enter a parse tree produced by the {@code dollarOrAt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDollarOrAt(_ ctx: RParser.DollarOrAtContext)
	/**
	 * Exit a parse tree produced by the {@code dollarOrAt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDollarOrAt(_ ctx: RParser.DollarOrAtContext)
	/**
	 * Enter a parse tree produced by the {@code plusNeg}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPlusNeg(_ ctx: RParser.PlusNegContext)
	/**
	 * Exit a parse tree produced by the {@code plusNeg}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPlusNeg(_ ctx: RParser.PlusNegContext)
	/**
	 * Enter a parse tree produced by the {@code nextStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNextStmt(_ ctx: RParser.NextStmtContext)
	/**
	 * Exit a parse tree produced by the {@code nextStmt}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNextStmt(_ ctx: RParser.NextStmtContext)
	/**
	 * Enter a parse tree produced by the {@code nullRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNullRule(_ ctx: RParser.NullRuleContext)
	/**
	 * Exit a parse tree produced by the {@code nullRule}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNullRule(_ ctx: RParser.NullRuleContext)
	/**
	 * Enter a parse tree produced by the {@code andExpr}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAndExpr(_ ctx: RParser.AndExprContext)
	/**
	 * Exit a parse tree produced by the {@code andExpr}
	 * labeled alternative in {@link RParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAndExpr(_ ctx: RParser.AndExprContext)
	/**
	 * Enter a parse tree produced by {@link RParser#exprlist}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExprlist(_ ctx: RParser.ExprlistContext)
	/**
	 * Exit a parse tree produced by {@link RParser#exprlist}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExprlist(_ ctx: RParser.ExprlistContext)
	/**
	 * Enter a parse tree produced by {@link RParser#formlist}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFormlist(_ ctx: RParser.FormlistContext)
	/**
	 * Exit a parse tree produced by {@link RParser#formlist}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFormlist(_ ctx: RParser.FormlistContext)
	/**
	 * Enter a parse tree produced by {@link RParser#form}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterForm(_ ctx: RParser.FormContext)
	/**
	 * Exit a parse tree produced by {@link RParser#form}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitForm(_ ctx: RParser.FormContext)
	/**
	 * Enter a parse tree produced by {@link RParser#sublist}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSublist(_ ctx: RParser.SublistContext)
	/**
	 * Exit a parse tree produced by {@link RParser#sublist}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSublist(_ ctx: RParser.SublistContext)
	/**
	 * Enter a parse tree produced by {@link RParser#sub}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSub(_ ctx: RParser.SubContext)
	/**
	 * Exit a parse tree produced by {@link RParser#sub}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSub(_ ctx: RParser.SubContext)
	/**
	 * Enter a parse tree produced by {@link RParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionCall(_ ctx: RParser.FunctionCallContext)
	/**
	 * Exit a parse tree produced by {@link RParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionCall(_ ctx: RParser.FunctionCallContext)
	/**
	 * Enter a parse tree produced by {@link RParser#rcomparison}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRcomparison(_ ctx: RParser.RcomparisonContext)
	/**
	 * Exit a parse tree produced by {@link RParser#rcomparison}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRcomparison(_ ctx: RParser.RcomparisonContext)
	/**
	 * Enter a parse tree produced by {@link RParser#assignOp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssignOp(_ ctx: RParser.AssignOpContext)
	/**
	 * Exit a parse tree produced by {@link RParser#assignOp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssignOp(_ ctx: RParser.AssignOpContext)
	/**
	 * Enter a parse tree produced by {@link RParser#number}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNumber(_ ctx: RParser.NumberContext)
	/**
	 * Exit a parse tree produced by {@link RParser#number}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNumber(_ ctx: RParser.NumberContext)
	/**
	 * Enter a parse tree produced by {@link RParser#rcomment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRcomment(_ ctx: RParser.RcommentContext)
	/**
	 * Exit a parse tree produced by {@link RParser#rcomment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRcomment(_ ctx: RParser.RcommentContext)
}