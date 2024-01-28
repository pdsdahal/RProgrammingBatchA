#Excel Data
#install.packages("readxl")

library(readxl)
filePath <- "/Users/sdahal/GitRepos/RProgrammingBatchA/resources/BankTestData.xlsx"
bankData <- read_excel(filePath, sheet = 1)
bankData

#Use head to view the first few rows of the data frame.
head(bankData)

#Use $ to access a specific column by name.
bankData$PhoneNumber

#Use square brackets [] to access a specific column by index.
bankData[,4]

#Use logical conditions to filter rows.
bankData[bankData$City == 'Heyburn',]

#Use square brackets [] to access specific elements by row and column indices.
bankData[2,3]

#Selects the third row of the data
bankData[3,]

#Selects rows 3 to 10 (inclusive) of the data
bankData[3:10,]


subset_data <- subset(bankData[10:20,])
subset_data

