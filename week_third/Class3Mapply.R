#Mapply
#Applies a function to multiple arguments (vectors or lists) 
#in a parallel or element-wise manner and returns a simplified result if possible.

#Example 1
firstElm <- c(1,5,7,8,10)
secondElm <- c(4,2,4,6,2)

vectorSum <- function(x,y){
  return(x+ y)
}

result <- mapply(vectorSum,firstElm,secondElm)
result

#Example 2
firstList <- list(a=matrix(1:4, ncol = 2), b=matrix(5:8, ncol = 2))
secondList <- list(a=matrix(1:4, ncol = 2), b=matrix(5:8, ncol = 2))

mapplyResult <- function(x, y){
  totalSum <- length(x) + length(y)
}

mapplyUseList <- mapply(mapplyResult, firstList, secondList)
mapplyUseList


  