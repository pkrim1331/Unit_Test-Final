#Average function
#1982-3
#
#arguments
#eet-nst    a matrix of the precipitation for each day (rows) at each weather station (columns)
#
#output
#a single value for the average of all precipitation values for all days at all weather stations from eet, ens, eft, net, nne, nst

#El Nino years
#1982
zz<-apply(Filter(is.numeric, eet), 2, mean, na.rm=T)
mean(zz)

#1997
yy<-apply(Filter(is.numeric,ens), 2, mean, na.rm=T)
mean(yy)

#2015
eft<- eft[,-437]
#Previous line is fragile because data can be put into this column with updates from the ACIS website, when there is no data there now.
xx<-apply(Filter(is.numeric,eft), 2, mean, na.rm=T)
mean(xx)

#Non-El Nino years
#1983
ww<-apply(Filter(is.numeric,net), 2, mean, na.rm=T)
mean(ww)

#1998
vv<-apply(Filter(is.numeric,nne), 2, mean, na.rm=T)
mean(vv)

#2016
nst<- nst[,-484]
#Previous line is fragile because data can be put into this column with updates from the ACIS website, when there is no data there now.
uu<-apply(Filter(is.numeric,nst), 2, mean, na.rm=T)
mean(uu)



