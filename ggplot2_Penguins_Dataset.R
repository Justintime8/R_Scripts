# ggplot2 with Palmer Penguins dataset

install.packages("palmerpenguins")

library(palmerpenguins)

data(penguins)

view(penguins)

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))