# if, else, and else if statements
j <- 34

if (j > 0){
  print("j is a positive number")
}

s <- 33 
if (s > 0){
  print("s is a positive number")
} else {
  print("s is either a negative number or zero")
}

s <- -33
if (s > 0) {
  print("s is a positive number")
} else {
  print ("s is either a negative number or zero")
}

j <- -35
if (j < 0) {
  print("j is a negative number")
} else if (j == 0) {
  print("j is zero")
} else {
  print("j is a positive number")
}