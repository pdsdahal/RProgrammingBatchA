#Cumulative Knowledge 

#install.packages("readxl")
#library is used for reading Excel files into R

#magrittr Library:
#It is often used in combination with the pipe (%>%) operator for creating more readable data manipulation workflows.
#install.packages("magrittr")

#lubridate Library:
#The lubridate library simplifies working with dates and times in R. 
#It provides functions to parse, manipulate, and format date-time objects.
#install.packages("lubridate")

#scales Library
#The scales package helps in customizing the appearance of plots by allowing users to modify scales and their properties.
#install.packages("scales")

#install.packages("ggplot2")

library(readxl)
library(magrittr)
library(lubridate)
library(scales)

stockFilePathXl <- "/Users/sdahal/GitRepos/RProgrammingBatchA/resources/StockData_STUDENT.xlsx"
stockData <- read_excel(stockFilePathXl, sheet = 2)

dataCleansing <- function(dataSet){
  dataSet$year <- year(dataSet$`IPO Date`)
  dataSet$month <-  month(dataSet$`IPO Date`)
  
  cleansedDataSet <- dataSet[which(dataSet$year >= 1980),]
  return(cleansedDataSet)
}

createGraph <- function(dataset){
  lg <- ggplot(dataset, aes(x = month, y = Price)) # graph month vs. population for years greater than 2000
  lg <- lg + geom_line(aes(color = factor(year), group = year)) # group by year and separate with different colors
  lg <- lg + scale_color_discrete(name = "Year") # name the legend
  lg <- lg + scale_y_continuous(labels = comma) # format the y axis
  lg <- lg + labs(title = "Price Growth", x = "Month", y = "Price") # add labels to the graph
  lg
}

dataCleansing(stockData) %>% createGraph


