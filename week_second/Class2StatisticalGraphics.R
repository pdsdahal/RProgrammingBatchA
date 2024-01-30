#Base Graphics 

#Base Histograms 
data(diamonds)
head(diamonds)

hist(diamonds$carat, main = "Histogram", xlab = "Carat", ylab = "Frequency")


#Base Scatterplot
data(diamonds)
plot(x=diamonds$carat, y=diamonds$price)

#BoxPlots
boxplot(diamonds$price)


#Using ggplot2
#install.packages("ggplot2")
library(ggplot2)

#Histogram
ggplot(data = diamonds) + 
  geom_histogram(aes(carat))

#Scatterplots
ggplot(data = diamonds, aes(x=carat, y=price)) + geom_point()




