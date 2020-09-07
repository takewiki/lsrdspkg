# mydata <- gl_getAcctList()
#
# View(mydata)


mydata2 <- gl_getAcctSum()

View(mydata2)

names(mydata2)

msg <- '`FMonth`+`FMgmtRptCode`+`FMgmtRptName`~`FDeptName`'
msg2 <- as.formula(msg)

 mydata3<- reshape2::dcast(data = mydata2,formula=msg2,fun.aggregate = sum,value.var = 'FTransactionAmt')

 View(mydata3)


 dcast_getFormula(row_var = c('123  21','bbc'),col_var = letters[7:9])
