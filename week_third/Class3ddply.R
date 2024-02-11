#PLYR packages

#Plyr is a package for data manipulation in R that provides a set of functions for 
#splitting, applying, and combining data. 

#It is based on the concept of split-apply-combine, 
#where a dataset is first split into smaller subsets, 
#a function is applied to each subset,
#and the results are then combined into a single output. 

#This process is useful for tasks such as aggregating data, summarizing data, and transforming data.

# The core of the package contains functions such as
# ddply, IIply, and Idply
# • All these functions perform split-apply-
#   combine functions on data.
# • ddply takes in a data.frame and outputs a data.frame
# • llply takes in a list and outputs a list
# • ldply takes in a list and outputs a data.frame


#install.packages("plyr")
#install.packages("HistData")
library(plyr)
library(ggplot2)
library(magrittr)
library(HistData)

# Example 1 : Using ddply to group by number of cylinders and calculate mean mpg

#View(mpg)

#.() is a special notation used to refer to the variable or variables by which you want to split the data. 
#In this case, .(Year) means that you want to split the Prostitutes dataset by the values in the Year column.

data(Prostitutes)

View(Prostitutes)
#Get average per year
ddply(Prostitutes, .(Year), summarise, ProsMean = mean(count))


#This code is grouping the data by year, and for each year, 
#it calculates the maximum, minimum, and average values of the "count" variable 
#(which presumably represents some count related to prostitutes). 
ddply(Prostitutes, .(Year), summarise,  ProMax = max(count), ProMin = min(count), ProAvg = mean(count))

