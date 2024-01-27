#Chapter 5: Advanced Data Structures 

#1. Frames : 
#It is like an Excel spreadsheet in that it has columns and rows. 
#Each column holds the same date type within the column, but each column can be different data types.
#Each Row is an observation


animalId <- 1:6
animalNames <- c("Cat", "Dog", "Elephant", "Buffalo", "Cow", "Pig")
animalCounts <- 11:16
lastUpdatedDtUtc <- as.Date(c("2021-01-01","2021-01-02","2021-01-03","2021-01-04","2021-01-05","2021-01-06"))

animalsDF <- data.frame(AnimalID = animalId, AnimalNames = animalNames, AnimalCounts = animalCounts, LastUpdatedDtUtc = lastUpdatedDtUtc)
animalsDF

nrow(animalsDF) #check the number of rows
ncol(animalsDF) #check the number of columns
dim(animalsDF) #check the number of rows and columns
names(animalsDF) #to look at the column names of data frames
head(animalsDF) #To look at the first few rows of a data frame 
tail(animalsDF) #To look at the last few rows of a data frame
class(animalsDF) #To check the class of a data frame

#Access data from dataFrames 
#$ or [] is used to access individual columns of a data frame

animalsDF$AnimalID # 1 2 3 4 5 6
animalsDF$AnimalNames #"Cat"      "Dog"      "Elephant" "Buffalo"  "Cow"      "Pig"  
animalsDF$AnimalCounts #11 12 13 14 15 16
animalsDF$LastUpdatedDtUtc #"2021-01-01" "2021-01-02" "2021-01-03" "2021-01-04" "2021-01-05" "2021-01-06"

animalsDF[1,2] # row, column 

#To access multiple columns by name
animalsDF[, c("AnimalNames","AnimalCounts")]

