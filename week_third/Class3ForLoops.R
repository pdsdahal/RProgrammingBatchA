#loops in R
#1. For Loop use in Vector 
count <- 0
for(i in 10:20){
  if(i %% 2 == 0){
    count <- count + 1
  }
}

cat("Total Event count : ",count)


#2. For Loop use in vector
fruits <- c("apple","banana","orange","mango")
for(fruit in fruits){
  print(fruit)
}

#3. Nesting for Loops
for(i in 1:9){
  for(j in 1:i){
    cat(" * ")
  }
  cat("\n")
}
