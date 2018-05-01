#create a graph showing the different total precipitation in inches for each year
#
yr<-c(1982, 1983, 1997, 1998, 2015, 2016)

avgDataframe<-as.data.frame(avg, row.names = yr, col.names = "Avg daily pcpn", sep = "")
print(avgDataframe)

scatter.smooth(avgDataframe, span = 2/3, degree = 1, family = "symmetric", xlab = "years", ylab = "pcpn", evaluation = 6)





