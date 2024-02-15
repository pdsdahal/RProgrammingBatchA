#dplyr package in R
#group_by function - divides the data into different segments.

library(magrittr)
library(ggplot2)
library(dplyr)

data("diamonds", package = "ggplot2")

#data is first passed to the group by and resulting grouped data.frame or tbl is passed to summarise function
diamonds %>% group_by(cut) %>% summarise(AvgPrice = mean(price))

#It will compute the average price for each combination of cut and color in the diamonds dataset. 
#This allows you to analyze how the average price varies based on both the cut quality and color of the diamonds.
diamonds %>% group_by(cut, color) %>% summarise(AvgPrice = mean(price))
