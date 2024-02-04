#Control Statements in R Programming

#2. If else Statement

#Example 1
countryName <- as.character(readline(prompt = "Enter country name : "))
if(countryName == "USA"){
  print("Your country name is matched!!!!")
}else{
  print("No Match!!!!!")
}

#Example 2
leapYearInput <- as.numeric(readline(prompt = "Enter a year "))
if(leapYearInput %% 4 == 0){
  if(leapYearInput %% 100 == 0){
    
    if(leapYearInput %% 400 == 0){
      sprintf("%s is leap year. ", leapYearInput)
    }else{
      sprintf("%s is leap year. ", leapYearInput)
    }
  }else{
    sprintf("%s is  leap year. ", leapYearInput)
  }
  
}else{
  sprintf("%s is not leap year. ", leapYearInput)
}


