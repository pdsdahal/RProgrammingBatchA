#Control Statements in R Programming

#4. ifelse SingleLine statement

# ifelse function. 
# It is used for vectorized conditional statements. 
# The syntax is similar to an if-else statement, 
# but it operates on entire vectors or arrays,
# making it particularly useful for handling 
# conditional operations on data frames or numeric vectors.

ifelse(1==1, "Yes", "No")
ifelse(1==2, "Yes", "No")

rollNos <- c(101,56,23,89,56)
ifelse(rollNos>40, " > 40", " < 40")


numbers <- c(456, 676, 787, 907)
ifelse(((numbers %% 2) == 0), "Even","Odd")

#Compound Tests
data1 <- c(1,4,6,7)
data2 <- c(5,4,8,7)

# this check each element of data1 and each element of data2
ifelse(data1 == 4 & data2 == 4, " Equal "," Not Equal ") 


