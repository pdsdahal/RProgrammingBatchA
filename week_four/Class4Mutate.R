#dplyr package in R
#mutate function - creating new columns or modifying existing columns .

library(magrittr)
library(ggplot2)

data("diamonds", package = "ggplot2")

#Creating a new column that is the ratio of price and carat
diamonds %>% mutate(price/carat)

# resulting column can express by a specific name
diamonds %>% 
  select(price, carat) %>% 
  mutate(ratio = price/carat)

#new column can be used immediately in the same mutate call
diamonds %>% 
  select(price, carat) %>% 
  mutate(ratio = price/carat, ratioDouble = ratio * 2)
