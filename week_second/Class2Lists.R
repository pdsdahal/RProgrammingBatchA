#List
#A List can contain all the same data types, a mix of data types, data frames, or other lists

studentInfo <- list("Ram Pandey", 1, "St. Louis","USA")
studentInfo

#Two elements of list with a vector that has 3 elements, second ele,ent is the 5 element vector
collegeNames <- list(c("Texas","Webster","Saint Louis"), 5:10)
collegeNames

#DataFrame
employeeTableDF <- data.frame(
  employeeIds = c(100,607,405,700,901),
  employeeNames = c("Zim", "Johnes","Todd","Shyam","Jack"),
  dob = as.Date(c("2021-01-01","2021-01-02","2021-01-03","2021-01-04","2021-01-05"))
)

#Two element in list, first one is data frame, second element is the 5 element vector
employeeListDF <- list(employeeTableDF,10:15)
employeeListDF

#You can also assign names to the elements of a list while creating the list
names(employeeListDF) <- c("EmployeeDataFrame", "ID" )
employeeListDF


#create empty List
#To create an empty list of a certain size use vector
emptyList <- vector(mode = "list",length = 6)
emptyList

#Add element in empty list
emptyList[[1]] <- "USA"
emptyList[[2]] <- "Nepal"
emptyList


#accessing element from list by index or by name
emptyList[[1]]
employeeListDF[["EmployeeDataFrame"]]

employeeListDF[["EmployeeDataFrame"]]$employeeNames

#See how long it currently is 
length(employeeListDF)



