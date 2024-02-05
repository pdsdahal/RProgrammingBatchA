# Controlling Loops
# break, next

#break
#When the break statement is encountered, the loop in which it resides is terminated, 
#and the program continues with the next statement after the loop.

#Example 1
for(i in 10:50){
  if(i>21){
    break;
  }
  print(i)
}

#next
#When the next statement is encountered, the current iteration of the loop is skipped, 
#and the program moves to the next iteration of the loop.

term <- as.numeric(readline(prompt = "Enter a term "))

sum <- 0
for(j in 1:term){
  num <- as.numeric(readline(prompt = "Enter a number "))
  if(num < 0){
    next
  }
  sum <- sum + num
}
cat("Sum of only positive numbers are : ", sum)





