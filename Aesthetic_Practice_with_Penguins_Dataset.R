# playing with different aesthetics

install.packages("palmerpenguins")

library(palmerpenguins)

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,shape=species))

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species, shape = species))

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species, shape = species, size = species))

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,alpha=species))

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g),color="purple")

ggplot(data= penguins, aes(x= flipper_length_mm, y= body_mass_g, color=species, size=species, shape = species)) +
  
  geom_point()

ggplot(data=penguins) + geom_line(mapping = aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=penguins) + geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=penguins) + geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=penguins) + geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g,linetype=species, color=species))

ggplot(data=penguins) + geom_jitter(mapping = aes(x=flipper_length_mm,y=body_mass_g))
