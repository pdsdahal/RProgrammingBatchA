#llply 
#Function from the plyr package
#input type list and output type of list

listInput <- list(firstMatrix = matrix(1:9, nrow = 3), secondVec = 11:19)
listInput

lapply(listInput, sum)

#
llply(listInput, sum)


checkOddEven <-  function(data){
  ifelse(data %% 2 == 0,"Even","Odd")
}

llply(listInput, checkOddEven)


