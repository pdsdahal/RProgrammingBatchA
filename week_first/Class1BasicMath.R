#Arithmetic Operators
num1 <- 10L
num2 <- 20L

#addition
addResult <- num1 + num2
addResult

#subtraction
subtractResult <- num1 - num2
subtractResult

#multiplication
mulResult <- num1 * num2
mulResult


#division
#R performs floating-point division by default when dealing with integers.
divResult <- num1/num2
divResult # 0.5

#To perform integer division and get the quotient as an integer

divIntResult <- num1 %/% num2
divIntResult #0

#remainder
remainderResult <- num1 %% num2
remainderResult #10


#Trigonometry

#Trigonometry functions take angles in radians as input. 
#To covert angles in radions use below logic 
#360 Degrees = 2π Radians

degToRad <- function (degree){
  radians <-  (pi*degree)/180
}

angle_in_degree <- 45
angle_in_rad <- degToRad(angle_in_degree)

sin(angle_in_rad)
cos(angle_in_rad)
tan(angle_in_rad)


