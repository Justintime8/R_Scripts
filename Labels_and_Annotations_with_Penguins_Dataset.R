#Labels and Annotations with Penguins Dataset

install.packages("palmerpenguins")

install.packages("tidyverse")

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y = body_mass_g, color = species)) + labs(title= "Palmer Penguins: Body Mass vs. Flipper Length")

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y = body_mass_g, color = species)) + labs(title= "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species")

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y = body_mass_g, color = species)) + labs(title= "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption = "Data collected by Dr. Kristen Gorman")

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y = body_mass_g, color = species)) + labs(title= "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption = "Data collected by Dr. Kristen Gorman") + annotate("text", x=220,y=3500,label="The Gentoos are the largest")

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y = body_mass_g, color = species)) + labs(title= "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption = "Data collected by Dr. Kristen Gorman") + annotate("text", x=220,y=3500,label="The Gentoos are the largest", color="purple")

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y = body_mass_g, color = species)) + labs(title= "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption = "Data collected by Dr. Kristen Gorman") + annotate("text", x=220,y=3500,label="The Gentoos are the largest", color="purple", fontface="bold",size=4.7, angle=25)

Penguin <- ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm,y = body_mass_g, color = species)) + labs(title= "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption = "Data collected by Dr. Kristen Gorman") + annotate("text", x=220,y=3500,label="The Gentoos are the largest", color="purple", fontface="bold",size=4.7, angle=25)

