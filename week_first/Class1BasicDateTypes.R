#is stored as a date that is represented in the number of days since January 1, 1970
dob <- as.Date("2022-01-01")
dob

#stored as a date and time that is represented by the number of seconds since January 1, 1970
fullDate <- as.POSIXct("2022-01-01 14:59:59")
fullDate

#current Date
currentDate <- Sys.Date()
currentDate

# current Date and Time
currentTime <- Sys.time()
currentTime
