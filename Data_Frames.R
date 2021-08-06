#Practicing with data frames

Library(tidyverse)

data("diamonds")

View(diamonds)

head(diamonds)

str(diamonds)

colnames(diamonds)

mutate(diamonds, carat_2=carat*100)