# Creating data frames

install.packages("tidyverse")

library(tidyverse)

names <- c("sherry", "justin", "edmar", "jasmine")

age <- c(21, 19, 23, 42)

people <- data.frame(names, age)

head(people)

mutate(people, age_in_5 = age + 5)

fruit <- c("lychee", "dragonfruit", "starfruit", "Watermelon")

rank <- c(2, 4, 3, 1)

fruit_rank <- data.frame(fruit, rank)

head(fruit_rank)
