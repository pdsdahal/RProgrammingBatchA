#dplyr package in R
#summarize function - gives summarized data like Average,Sum, etc

library(ggplot2)
library(magrittr)
data("diamonds", package = "ggplot2")

#it will calculate these summary statistics for the price and carat columns in the diamonds dataset.
diamonds %>% summarize(AvgPrice = mean(price), MedianPrice = median(price), MaxPrice = max(price), AvgCarat = mean(carat))
