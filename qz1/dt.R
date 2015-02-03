library(data.table)
DT=data.table(x=rnorm(9), y=rep(c("a","b","c"),each=3), z=rnorm(9))
head(DT,3)