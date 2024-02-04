#Switch in R

#switch(expr, case1, case2, case3, ..., default)

#simple switch
data <- switch (2,
  "Apple",
  "Ball",
  "Cat",
  "Dog"
)
data

#function with switch
switchFunDemo <- function(input){
  
  num1 <- as.numeric(readline(prompt = "Enter num1 "))
  num2 <- as.numeric(readline(prompt = "Enter num2 "))
  
  switch (input,
          "add" = {
            resultAdd <- num1 + num2
            print(sprintf("Sum of %s + %s = %s", num1, num2, resultAdd))
          },
          "subtract" = {
            resultSub <- num1 - num2
            print(sprintf("Subtract of %s - %s = %s", num1, num2, resultSub))
          }
  )
  }

# Example usage
switchFunDemo("add")


