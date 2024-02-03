#Control Statements in R Programming

#1. R if Statement

#Example 1
data <- 21L
if(is.integer(data)){
  sprintf("%s is an integer number.",data)
}

#Example 2

countryName <- "USA"

if(countryName == "USA"){
  print("Country Name is equal")
}

#Example 3
#Take an input from the user

inputNum <- readline(prompt = "Enter a number : ")
num <- as.numeric(inputNum)
if(num %% 2 == 0){
  sprintf("Entered number %s is even.", num)
}


