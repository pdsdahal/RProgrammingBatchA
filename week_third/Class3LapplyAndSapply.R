#lapply and sapply

#lapply(): Always returns a list
#sapply(): It may return a vector, matrix, or array instead of a list if possible.

#Example 1
collegeIdsList <- list(first = c(1:3), second = c(11:13), third = c(21:23))
collegeIdsList

lapply(collegeIdsList, sum)


lapply(collegeIdsList, function(data) data+10)
# $first
# [1] 11 12 13
# 
# $second
# [1] 21 22 23
# 
# $third
# [1] 31 32 33

#Example 2
studentNames <- list("Ram Pandey","Jack","Jones","Smith","Todd")
lapply(studentNames, nchar)


sapply(collegeIdsList, function(ids) ids+100)
# first second third
# [1,]   101    111   121
# [2,]   102    112   122
# [3,]   103    113   123


sapply(studentNames, nchar)



