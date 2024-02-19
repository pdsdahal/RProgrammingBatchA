#String manipulation in R

#1. paste
#takes series of string and combines them into one string

emplName <- "Todd"
empAddress <- "USA"
empPhoneNo <- "12345678"
paste(emplName, empAddress, empPhoneNo, "Texas")

# element can be a vector of data to be put together.
universityNames <- c("Texas University", "St. Louis University", "Oxford University")
universityPhoneNo <- c("123456","876543","567890")
paste(universityNames, universityPhoneNo, sep = " Phone No : ")

# [1] "Texas University Phone No : 123456"     "St. Louis University Phone No : 876543"
# [3] "Oxford University Phone No : 567890"   

#When the vectors do not have the same length, they are recycled.
professorNames <- c("Todd","Zim","Jack")
professorAddres <- c("Nottingham", "St. Louis")
paste("Hello", professorNames, professorAddres)


#2. sprintf
#long string with placeholders for inserting values

studentName <- "Ram Pandey"
faculty <- "Data Analytics"
sprintf("%s is a student of %s.", studentName, faculty)
