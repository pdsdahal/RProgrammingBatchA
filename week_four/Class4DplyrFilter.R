#Group Manipulation - dplyr

#filter function - used to produce a subset of the data frame, 
#retaining all rows that satisfy the specified conditions

library(dplyr)
library(ggplot2)

data("diamonds", package = "ggplot2")

#filtering the diamonds dataset to only include rows where the price is greater than 5000,
#the color is "E", and the cut is "Premium".
diamonds %>% filter(price > 5000 & color == "E" & cut == "Premium")

#to filter on a column being equal to one of many possible values the %in% operator
#example
# compound filtering is accomplished by either separating the expression with a comma or an ampersand
diamonds %>% filter(price > 18000 & color %in% c("E","J") & cut == "Premium" & depth != 62.2 )

diamonds %>% filter(price > 18000 , color %in% c("E","J") , cut == "Premium" , depth != 62.2 )

#filter with or
diamonds %>% filter(price > 18000 | price < 1000, color %in% c("E","J") , cut == "Premium" , depth != 62.2 )

