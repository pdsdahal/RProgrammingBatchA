#String manipulation in R

#1. paste
#takes series of string and combines them into one string

emplName <- "Todd"
empAddress <- "USA"
empPhoneNo <- "12345678"
paste(emplName, empAddress, empPhoneNo, "Texas")

#2. sprintf
#long string with placeholders for inserting values

studentName <- "Ram Pandey"
faculty <- "Data Analytics"
sprintf("%s is a student of %s.", studentName, faculty)
