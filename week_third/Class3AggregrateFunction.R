#Aggregrate Functions in R

#install.packages("ggplot2")

library(ggplot2)
data("diamonds")

View(diamonds)

#find mean price by color
#Way 1
avarageCaratByColor <- aggregate(diamonds$price, by=list(diamonds$color), mean)
avarageCaratByColor

#Way 2 : Average price for each type of cut
aggregate(price ~ cut, data = diamonds, mean)

#To group the data by more than obe variable add the additional variable to the right side 
# of the formula separating it with plus sign 

#Putting price on the left side of the ~ symbol and cut + color on the right side 
#indicates that we want to see how the price relates to both the cut and the color of the diamonds.
aggregate(price ~ cut + color, diamonds, mean, na.rm = TRUE)

#This formula indicates that we want to aggregate both price and carat 
#based on the levels of the cut variable.
aggregate(cbind(price , carat) ~ cut, diamonds, mean)

