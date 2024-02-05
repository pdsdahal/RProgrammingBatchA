#while loops

#Example 1
#Find the Sum of Natural Numbers 1 to 10

i <- 1
sum <- 0
while(i <= 10){
  sum <- sum + i
  i <- i+1
}
cat("Total sum from 1 to 100 : ", sum)

# Example 2
#A Fibonacci sequence 

n <- as.numeric(readline(prompt = "Enter the term "))
a <- 0
b <- 1
count <- 0
while(count <= n){
  print(a)
  c <- a + b
  a <- b
  b <- c
  count <- count + 1
}



  
  
  

