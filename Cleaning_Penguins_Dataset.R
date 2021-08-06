# Cleaning Palmer Penguins data

install.packages("palmerpenguins")

install.packages("here")

install.packages("skimr")

install.packages("janitor")

library("here", "skimr", "janitor", "palmerpenguins")

skim_without_charts(penguins)

head(penguins)

glimpse(penguins)

penguins %>% 
  select(species)

penguins %>% 
  select(-species)

penguins %>% 
  rename(island_new = island)

rename_with(penguins, toupper)

rename_with(penguins, tolower)

clean_names(penguins)