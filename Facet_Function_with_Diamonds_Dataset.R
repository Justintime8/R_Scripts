#Facet Functions with Diamond Dataset

library(ggplot2)
library(palmerpenguins)

ggplot(data=diamonds) + geom_bar(mapping=aes(x=color,fill=cut))+ facet_wrap(~cut)