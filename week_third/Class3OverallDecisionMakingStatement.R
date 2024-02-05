library(readxl)
library(magrittr)
xlFilePath <- "/Users/sdahal/GitRepos/RProgrammingBatchA/resources/StockData_STUDENT.xlsx"

stockData <- read_excel(path = xlFilePath, sheet = 1) %>% data.frame()
rownames(stockData) <- stockData$Ticker
head(stockData)

#fetch first 6 rows of data
head(stockData,6)

#fetch last 6 rows of data
tail(stockData,6)


priceFirst10 <- head(stockData$Price, 10)
priceFirst10

ifelse(priceFirst10 > mean(stockData$Price), "Higher","Lower")



# round average price to 2 decimal places.  
# round takes to arguments, the data and the digits round(x,digits)
# using pipe operator, pipe sends output from previous function into the first arg automatically

priceCheck <- function(ticker){
  
  meanPrice <- mean(stockData$Price) %>% round(2)
  
  tickerPrice <- stockData[ticker, "Price"]
  
  if(meanPrice > tickerPrice){
    print(sprintf("Mean price %s is greater than tickerprice %s  ", meanPrice, tickerPrice))
  }
  
}

priceCheck("ABT")


round(stockData$Price, 2)



