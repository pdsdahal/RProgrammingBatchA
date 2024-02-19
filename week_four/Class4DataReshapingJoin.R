#Data Reshaping 
#join

# Part of the plyr package
# • Like merge but faster
# • Argument for specifying
# left, right, inner, or full
# (outer) join
# • Put data.frames in a list
# and join using Reduce


dataurl <- "https://jozefhajnala.gitlab.io/r/post/data/"
weather <- readRDS(url(paste0(dataurl, "r006/weather.rds")))
flights <- readRDS(url(paste0(dataurl, "r006/flights.rds")))
#names(weather)
#names(flights)
mergeColumns <- c("origin","time_hour")

#inner Join
resultAfterMerging <- merge(weather, flights, by = mergeColumns)
head(resultAfterMerging,2)

#Left Join
leftJoinResult <- merge(weather, flights, by = mergeColumns, all.x = TRUE)
head(resultAfterMerging,2)

#rightJoin
rightJoinResult <- merge(weather, flights, by = mergeColumns, all.y = TRUE)
head(rightJoinResult,2)

#Full Join 

fullJoin <- merge(weather, flights, by = mergeColumns, all = TRUE)
head(fullJoin, 2)
