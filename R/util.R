
#' 获取数据转换公式
#'
#' @param row_var 行变量
#' @param col_var 列变量
#'
#' @return 返回公式
#' @export
#'
#' @examples
#' dcast_getFormula()
dcast_getFormula <- function(row_var,col_var) {
  row1 <-paste("`",row_var,"`",collapse = '+',sep = "")
  col1 <-paste("`",col_var,"`",collapse = '+',sep = "")
  formula1 <- paste0(row1,"~",col1)
  res <- as.formula(formula1)
  return(res)
}
