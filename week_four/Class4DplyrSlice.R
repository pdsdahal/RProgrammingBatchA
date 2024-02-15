#dplyr
#slice function - produces data in required columns of a data.frame.
#it is used for specifying rows by row number.

library(ggplot2)
library(dplyr)
library(magrittr)
data("diamonds", package = "ggplot2")

#passed as a vector to slice
diamonds %>% slice(1:5)

#Subset the diamonds dataset to include only rows 1 through 3, row 7, and rows 10 through 12.
diamonds %>% slice(c(1:3,7,10:12))