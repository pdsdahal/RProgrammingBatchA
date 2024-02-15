#Data Reshaping

#cbind and rbind 
# when we have a two datasets with either identical columns (both the number of and names)
# or the same number of rows 

#cbind: Stands for "column bind"
collegeNames <- c("ABC1","ABC2","ABC3")
collegeAddress <- c("Address1","Address2","Address3")
totalStudents <- c(100:102)

collegeDs1 <- cbind(collegeNames, collegeAddress,totalStudents)


#create data frame
#rbind: Stands for "row bind".

collegeDs2 <- data.frame(collegeNames = c("XYZ1","XYZ2","XYZ3"), collegeAddress = c("USA 1","USA 2","USA 3"), totalStudents = c(1:3))
collegeDs <- rbind(collegeDs1, collegeDs2)
collegeDs

