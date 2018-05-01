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
z<- mean(zz)

#1997
yy<-apply(Filter(is.numeric,ens), 2, mean, na.rm=T)
y<- mean(yy)

#2015
#Previous line is fragile because data can be put into this column with updates from the ACIS website, when there is no data there now.
eft<- eft[,-470]
xx<-apply(Filter(is.numeric,eft), 2, mean, na.rm=T)
x<- mean(xx)

#Non-El Nino years
#1983
ww<-apply(Filter(is.numeric,net), 2, mean, na.rm=T)
w<- mean(ww)

#1998
v<-apply(Filter(is.numeric,nne), 2, mean, na.rm=T)
v<- mean(v)

#2016
#Previous line is fragile because data can be put into this column with updates from the ACIS website, when there is no data there now.
nst<- nst[,-486]
uu<-apply(Filter(is.numeric,nst), 2, mean, na.rm=T)
u<- mean(uu)
avg<- list(c(z,w,y,v,x,u))
print(avg)
#These values are the average precipitation for each day of each year across all of California. 
