#Reading Data in R
#1. Reading CSVs
#In order to read data from a CSV use the "read.table()". 
#The result of using read.table is a data.frame

filePath <- "/Users/sdahal/GitRepos/RProgrammingBatchA/resources/employeeDetails.csv"
datas <- read.table(file = filePath, header = TRUE, sep = ",")
datas

#To check if an object is a data frame
is.data.frame(datas) #TRUE

#Return number of columns in the object
ncol(datas) 

#Return number of rows in the object
nrow(datas)

#Get the maximum, minimum and mean age
min(datas$Age)
max(datas$Age)
mean(datas$Age)

#Function to view the first few rows of data
head(datas)

# Get the employee detail having max age
subset(datas, Age == max(datas$Age))

#Get all the employee whose salary is >= 9792
subset(datas, datas$Salary >= 9792)

#Get all the employee whose salary is >= 9792 and education is Bachelor
subset(datas, datas$Salary >= 9792 & datas$Education == "Bachelor")



#To read large csv and other text file are read_delim  from the readr package. it is faster than read.table.
# and fread from the data.table package 

#---------------------Using read_delim

#install.packages("readr")

library(readr)
filePath1 <- "/Users/sdahal/GitRepos/RProgrammingBatchA/resources/employeeDetails.csv"
employeeDatas <- read_delim(file = filePath1, delim = ',', show_col_types = FALSE)
employeeDatas

#Access columns using column names.
employeeDatas$`First Name`

# Get the employee detail having age >= 20
subset(employeeDatas, employeeDatas$Age >= 20)

#Access elements by row and column indices.
employeeDatas[2,3] # Access the element in the second row, third column

#Use column names to subset specific columns.
employeeDatas[, c("First Name","Email")]

