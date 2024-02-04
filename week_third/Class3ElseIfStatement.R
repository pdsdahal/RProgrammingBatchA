#Control Statements in R Programming

#3. Else if statement

#Example 1

inputAge <- as.numeric(readline(prompt = "Enter you age "))

if(inputAge <= 18){
  print("You are child.")
}else if(inputAge >= 35){
  print("You are old")
}else{
  print("You are young.")
}

#Example 2

print("1. Addition")
print("2. Subtraction")
print("3. Multiplication")

choice <- as.numeric(readline(prompt = "Enter your choice : "))
num1 <- as.numeric(readline(prompt = "Enter first number : "))
num2 <- as.numeric(readline(prompt = "Enter second number : "))

if(choice==1){
  addResult <- num1 + num2
  cat("The sum of ", num1 ," + ", num2 ," = ", addResult)
}else if(choice==2){
  subResult <- num1 - num2
  cat("The subtraction of ", num1, " - ", num2 ," = ", subResult)
}else{
  mulResult <- num1 * num2
  cat("The multiplication of ", num1 ," * ", num2 ," = ", mulResult)
}

