#String manipulation in R
#Regular Expressions

library(stringr)
animalNames <- c("Dog","Cat","Elephant")

#returns a logical vector indicating whether each element of strings contains the letter 'a'
matches <- str_detect(animalNames, pattern = "a")
print(animalNames[matches])

#
year <- c("1797-1801","1825-1829","1841-1845","1865-1869","1961-1963","1963-1965","1963-1969")
presidentsNames <- c("John Adams","John Quincy Adams","John Tyler","Andrew Johnson","John F. Kennedy","Lyndon B. Johnson","Lyndon B. Johnson")
startYear <- c(1797,1825,1841,1865,1961,1963,1963)
stopYear <- c(1801,1829,1845,1869,1963,1965,1969)
inputData <- data.frame( year, presidentsNames, startYear, stopYear)

johnMatchesResult <- str_detect(inputData$presidentsNames, pattern = "john")
#FALSE FALSE FALSE FALSE FALSE FALSE FALSE
print(inputData$presidentsNames[johnMatchesResult])

#find matches for "john" (ignoring case) within inputData$presidentsNames and then prints the matched strings. 
johnMatchesResult1 <- str_detect(inputData$presidentsNames, regex("john", ignore_case = TRUE))
print(inputData$presidentsNames[johnMatchesResult1])


#matches any sequence of 4 digits.
str_detect(inputData$startYear, pattern = "\\d{4}")

#matches any sequence of digits that is between 5 and 6 characters long.
str_detect(inputData$stopYear, pattern = "\\d{5,6}")


