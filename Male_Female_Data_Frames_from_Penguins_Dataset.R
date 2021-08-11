install.packages("palmerpenguins")

library(palmerpenguins)

library(ggplot2)

ggplot(data=penguins) + geom_point(mapping =  aes(x=bill_length_mm,y=bill_depth_mm))

view(penguins)

male_penguins <- filter(penguins, penguins$sex=="male")

view(male_penguins)

male_penguins_summary <- penguins %>% 
  group_by(species) %>% 
  summarise(average_bill_length_mm=mean(bill_length_mm), average_body_mass_g=mean(body_mass_g))

view(male_penguins_summary)

ggplot(male_penguins) + geom_point(mapping = aes(x=bill_length_mm,y=body_mass_g))

female_penguins <- filter(penguins, penguins$sex=="female")

view(female_penguins)

ggplot(female_penguins) + geom_point(mapping = aes(x=bill_length_mm,y=body_mass_g))