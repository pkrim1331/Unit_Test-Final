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
a<-colSums(Filter(is.numeric, eet), na.rm=T)
aa<- sum(a)

#1997
b<-colSums(Filter(is.numeric,ens), na.rm=T)
bb<-sum(b)

#2015
c<-colSums(Filter(is.numeric,eft), na.rm=T)
cc<-sum(c)

#Non-El Nino years
#1983
d<-colSums(Filter(is.numeric,net), na.rm=T)
dd<-sum(d)

#1998
e<-colSums(Filter(is.numeric,nne), na.rm=T)
ee<-sum(e)

#2016
f<-colSums(Filter(is.numeric,nst), na.rm=T)
ff<-sum(f)

total<-list(c(aa,dd,bb,ee,cc,ff))
print(total)
#These values are the total amount of precipitation in inches throughout the whole year for every year.



