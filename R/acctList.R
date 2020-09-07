#' 获取凭证明细
#'
#' @param conn 连接
#'
#' @return 返回值
#' @export
#'
#' @examples
#' gl_getAcctList()
gl_getAcctList <- function(conn=tsda::conn_rds('rpsrds')) {
  sql <- paste0("SELECT [FIndex]
      ,[FYear]
      ,[FPeriod]
      ,[FMonth]
      ,[FDate]
      ,[FCategory]
      ,[FNumber]
      ,[FDesc]
      ,[FAcctCode]
      ,[FAcctName]
      ,[FCustName]
      ,[FDeptName]
      ,[FEmpName]
      ,[FProject]
      ,[FCashCode]
      ,[FDebitAmt]
      ,[FCreditAmt]
      ,[FTransactionAmt]
      ,[FMgmtRptCode]
      ,[FMgmtRptName]
      ,[FReptPurpose]
      ,[FNote]

  FROM [dbo].[t_gl_acctList]")
  res <- tsda::sql_select(conn,sql)

}

#' 获取凭证列表汇总数
#'
#' @param conn 连接
#'
#' @return 返回值
#' @export
#'
#' @examples
#' gl_getAcctSum()
gl_getAcctSum <- function(conn=tsda::conn_rds('rpsrds')) {
  sql <- paste0("select * from t_gl_acctListSum")
  res <- tsda::sql_select(conn,sql)

}
