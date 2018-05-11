#create a graph showing the different total precipitation in inches for each year
#
yr<-c(1982, 1983, 1997, 1998, 2015, 2016)

avgDataframe<-as.data.frame(avg, row.names = yr, col.names = "Avg daily pcpn", sep = "")
print(avgDataframe)

#Average daily precipitation for each year, alternating El Nino year and non-El Nino year
scatter.smooth(avgDataframe, span = 2/3, degree = 1, family = "symmetric", xlab = "Years", ylab = "Avg Daily Precipitation (in.)", evaluation = 6)

totDataframe<- as.data.frame(total, row.names = yr, col.names = "Total Precipitation", sep = "")
print(totDataframe)

#Total precipitation for each year also alternating El Nino years and non-El Nino years

Tpcpn<- as.matrix(totDataframe)
barplot(Tpcpn, width = 1, names.arg = yr, space = 1, axisnames = T, axis.lty = 6, beside = T, ylab = "Total Precipitation (in.)", xlab = "Years")


