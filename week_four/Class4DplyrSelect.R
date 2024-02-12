# dplyr package in R
#dplyr is a popular R package used for data manipulation. 
#It provides a set of functions that are designed to make working with data frames easier 
#and more intuitive. 
#Some of the main functions in dplyr include 
#pipes(),filter(), select(), mutate(), summarize(), and arrange(), among other

#pipes 

library(magrittr)
library(ggplot2)

data("diamonds", package = "ggplot2")


findSum <- function(data){
 sum(data$price)
}

diamonds %>% head(n = 3) %>% findSum()


#select 
library(dplyr)
data("diamonds", package = "ggplot2")

#View(diamonds)
select(diamonds, carat, price, cut)


diamonds %>% select(carat, color, cut, price) 

#allow to sepecify the column names as a vector 
diamonds %>% select(c(carat, color, cut, price))

# if the column names are stores in variable 
columnNames <- c('carat','color','cut','price')
diamonds %>% select(.dots=columnNames)

#Alternative approach of Select
columnNames1 <- c('carat','cut','price')
diamonds %>% select(one_of(columnNames1))

#Taditional Way using R square bracket
diamonds[, c('carat','cut','price')]

#Column name can be specified by position using their indices 
select(diamonds, 1, 7)

#Searching for a partial match 

#specifying a condition to select columns whose names start with the letter 'c'.
diamonds %>% select(starts_with('c')) 

#specifying a condition to select columns whose names end with the letter 't'.
diamonds %>% select(ends_with('t'))

#specifies a condition to select columns containing the letter 'e' in their names.
diamonds %>% select(contains('e'))


#custom example 

studentsData <- data.frame(id = c(1:10), 
                      studentName = c("Ram","Shyam","Sam","Hari","Gopal","Radha","Krishna","Todd","John","Jack"),
                      age = c(21:30)               
                       )
                                                    
studentsData %>% select(id,age)
studentsData %>% select(starts_with('s'))

#Regular expression
#searches are done with matches 

#specifies a regular expression pattern to select columns 
#whose names contain the 
#letter 'a' followed by any number of characters (.) and then the letter 't'.
diamonds %>% select(matches('a.+t'))

