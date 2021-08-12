#Facet Functions with Penguin Dataset

install.packages("tidyverse")

install.packages("palmerpenguins")

install.packages("ggplot2")

library(tidyverse)

library(palmerpenguins)

ggplot(data=penguins)+ geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+ facet_wrap(~species)
