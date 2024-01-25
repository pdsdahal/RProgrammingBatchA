#Missing Data Handling in R

salary <- c(1235.67, 6983,NA,8453,7809)
sum(salary) #NA
mean(salary) #NA
max(salary) #NA
min(salary) #NA
sd(salary) #NA
var(salary) #NA

#Handle NA

#na.rm stands for : remove missing values
sum(salary, na.rm = TRUE) #24480.67
mean(salary, na.rm = TRUE) #6120.167
max(salary, na.rm = TRUE) #8453
min(salary, na.rm = TRUE) #1235.67
sd(salary, na.rm = TRUE) #3311.448
var(salary, na.rm = TRUE)



