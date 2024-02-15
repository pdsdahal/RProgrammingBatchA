#dplyr package in R
#arrange function - reorder the rows of a data.frame.

library(magrittr)
library(ggplot2)

data("diamonds", package = "ggplot2")

#it will calculate the average price and total carat weight for each group of diamonds 
#based on cut, then arrange the groups in ascending order of average price.

diamonds %>% group_by(cut) %>% summarise(AvgPrice = mean(price), SumCarat = sum(carat)) %>% arrange(AvgPrice)

#sort the resulting data frame in descending order based on the AvgPrice column. 
#Now, the groups will be ordered from highest to lowest average price of diamonds within each group based on cut quality.

diamonds %>% 
  group_by(cut) %>% 
  summarise(AvgPrice = mean(price), SumCarat = sum(carat)) %>% 
  arrange(desc(AvgPrice))