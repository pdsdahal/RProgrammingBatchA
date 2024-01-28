#Matrices
#Matrix is a rectangular arrangement of numbers in rows and columns. 

matrixFirst <- matrix(1:9, nrow = 3, ncol = 3)
matrixSecond <- matrix(21:29, nrow = 3, ncol = 3)

nrow(matrixFirst)
ncol(matrixFirst)
dim(matrixFirst)

nrow(matrixSecond)
ncol(matrixSecond)
dim(matrixSecond)

#matrix add
matrixAdd <- matrixFirst + matrixSecond
matrixAdd

#matrix subtraction 
matrixSub <- matrixFirst - matrixSecond
matrixSub

#matrixMul
matrixMul <- matrixFirst * matrixSecond
matrixMul

#to see if the elements are equals 
matrixFirst == matrixSecond

# [,1]  [,2]  [,3]
# [1,] FALSE FALSE FALSE
# [2,] FALSE FALSE FALSE
# [3,] FALSE FALSE FALSE

#set rownames in the matrix 
rownames(matrixFirst) <- c("firstRow", "SecondRow","ThirdRow")
matrixFirst

#set columnnames in the matrix 
colnames(matrixFirst) <- c("firstColumn","secondColumn","thirdColumn")
matrixFirst

#Accessing elements from Array

#first and second row
matrixFirst[1:2,]

# second column and third
matrixFirst[,2:3]

#Accessing individual element from matrix 
matrixFirst[1,3] #row number, column number
