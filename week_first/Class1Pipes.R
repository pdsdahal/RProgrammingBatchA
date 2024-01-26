#Pipes 
#Pipes are a new way to call functions in R
#Uses the “Magrittr” package

#Normal example Series of Function 

data <- mean(1:100)
dataSqrt <- sqrt(data)
dataRound <- round(dataSqrt, digits = 2) #7.11

data
dataSqrt
dataRound
#in single line
resultFinal <- round(sqrt(mean(1:100)), digits = 2)
resultFinal #7.11

#using pipe %>%
#Takes the value or object on the left side of the pipe and inserts it into the first argument of the function on the right side of the pipe.

#Example 1

result <- 1:100 %>% mean() %>% sqrt() %>% round(digits = 2)
result

#Example 2

rollNo <- c(10,5,NA,50,NA,20)
rollNo %>% sum(na.rm = TRUE) 




