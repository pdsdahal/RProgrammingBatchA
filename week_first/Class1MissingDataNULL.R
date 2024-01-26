#Missing Data :  NULL

#In Vector it is smiply disappears and it did not get sstored.
studentIds <- c(1, 5, NULL, 9, 10, NULL)
studentIds #1  5  9 10

#To test the value NULL

collegeName <- NULL
is.null(collegeName) #TRUE
typeof(collegeName) #NULL