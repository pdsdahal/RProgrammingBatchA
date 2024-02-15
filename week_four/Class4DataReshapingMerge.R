#Data Reshaping 
#merge

#Merges two data.frames
#Can specify different column names for each data.frame
#merge can be slow
#Specify a key column
#R built in function

df1 <- data.frame(empId = c(1:10), empySaraly = c(101:110))
df2 <- data.frame(empId = c(2,10,9,7), employeeName = c("Ram","Shyam","Hari","Gopal"))

#This code merges df1 and df2 based on the empId column, and the resulting data frame dfs 
#contains the merged data, with columns from both df1 and df2.

dfs <- merge(df1, df2, by = "empId")
dfs