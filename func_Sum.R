#Sum function for each location
#year 1982-3
#
#arguments
#eet    A matrix of precipitation of each day (366 rows) for each weather station in CA
#
#output
#A vector of values of total precipitation for each weather station for the year

#colSums function use columns (second dimensions) with sum as function
#El Nino years
#1982
aa<-colSums(Filter(is.numeric, eet), na.rm=T)
sum(aa)

#1997
bb<-colSums(Filter(is.numeric,ens), na.rm=T)
sum(bb)

#2015
cc<-colSums(Filter(is.numeric,eft), na.rm=T)
sum(cc)

#Non-El Nino years
#1983
dd<-colSums(Filter(is.numeric,net), na.rm=T)
sum(dd)

#1998
ee<-colSums(Filter(is.numeric,nne), na.rm=T)
sum(ee)

#2016
ff<-colSums(Filter(is.numeric,nst), na.rm=T)
sum(ff)




rbind(cbind(Filter(x, is.numeric), Rtot = row.sums), Ctot = col.sums )


