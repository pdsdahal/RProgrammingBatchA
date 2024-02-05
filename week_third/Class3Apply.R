#Group Manipulation 

# Apply Family 
#apply() function must be used on a matrix type of structure

# accepts 3 arguments
# • 1st argument is the object we are working with
# • 2nd argument is the margin to apply the function over
#
# •1 = operate over the rows
# •2 = operate over the columns
#
# • 3rd argument is the function we want to apply

dataMatrix <- matrix(1:9, nrow = 3, ncol = 3)
#sum the rows
apply(dataMatrix, 1, sum)

#sum the columns
apply(dataMatrix, 2, sum)


#handle missing data

rollNoMatrix <- matrix(1:9, nrow = 3, ncol = 3)
rollNoMatrix[2,1] <- NA

rollNoMatrix

apply(rollNoMatrix, 1, mean)
apply(rollNoMatrix, 1, mean, na.rm = TRUE)

