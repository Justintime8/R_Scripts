# Working with Bias Functions

install.packages("SimDesign")

library(SimDesign)

actual_temp <- c(45.5, 80, 32.1, 81, 92, 50)

predicted_temp <- c(46, 79, 31, 79, 90, 49.8)

bias(actual_temp, predicted_temp)

actual_sales <- c(150, 204, 135, 244, 112, 297)

predicted_sales <- c(200, 301, 152, 253, 154, 314)

bias(actual_sales, predicted_sales)