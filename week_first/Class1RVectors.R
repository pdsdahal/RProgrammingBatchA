#R Vector : collection of element of same data type
rollNo <- c(1,2,7,5,3)
rollNo
typeof(rollNo) #double

salary <- c(1L,2L,7L,5L,3L)
salary
typeof(salary) #integer

studentNames <- c("Ram", "Shyam","Hari")
studentNames
typeof(studentNames) #character

studnetDetails <- c(1, 5, 6, 7.6, "Ram Dahal", "Sita Pandey")
studnetDetails
typeof(studnetDetails) #character


studentIds <- c(111,114,116,118)
# assigned names to these values using the names() function.
names(studentIds) <- c("Ram", "Shyam", "Hari","Gopal") 
studentIds

#Get value by index and name
#first element of index is 1 in Vector not 0

studentIds[1] #by index

studentIds["Shyam"] #by name


#Add value in elements
studentIds <- studentIds+1
studentIds

#remove element from the specified index
studentIds <- studentIds[-3]
studentIds
