#Sum function for each location
#year 1982-3
#
#arguments
#eet    A matrix of precipitation of each day (366 rows) for each weather station in CA
#
#output
#A vector of values of total precipitation for each weather station for the year

#apply function use columns (second dimensions) with sum as function
apply(eet, 2, sum, trim = .008)



