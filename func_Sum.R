#Sum function for each location
#year 1982-3
#
#arguments
#eet    A matrix of precipitation of each day (366 rows) for each weather station in CA
#
#output
#A vector of values of total precipitation for each weather station for the year

#apply function use columns (second dimensions) with sum as function
apply(eet, 1, sum)

gg<-colSums(Filter(is.numeric, eet), na.rm=T)
hist(gg)
apply(Filter(is.numeric, eet), na.rm=T, sum)

#x <- cbind(eet$x = 3, x2 = c(4:1, 2:5))
#dimnames(x)[[1]] <- letters[1:8]
apply(x, 2, mean, trim = .2)
col.sums <- apply(x, 2, sum)
row.sums <- apply(x, 1, sum)
rbind(cbind(x, Rtot = row.sums), Ctot = c(col.sums, sum(col.sums)))


