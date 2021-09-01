bars_df <- read.csv("flavors_of_cacao.csv")


rename(bars_df, CompanyÂ...Maker.if.known. = Brand)
colnames(bars_df)

trimmed_bars_df <- bars_df %>% 
  select(Rating, Cocoa.Percent, CompanyÂ...Maker.if.known.)
view(trimmed_bars_df)

trimmed_bars_df %>% 
  summarise(mean_Rating=mean(Rating))

best_trimmed_flavors_df <- trimmed_bars_df %>% 
  filter(Cocoa.Percent >= 80) %>% 
  filter(Rating >= 3.75)

view(best_trimmed_flavors_df)

ggplot(data = best_trimmed_flavors_df) + geom_bar(mapping = aes(x=CompanyÂ...Maker.if.known.))

ggplot(data = best_trimmed_flavors_df) + geom_bar(mapping = aes(x = Rating)) + facet_wrap(~Rating)

ggplot(data = trimmed_bars_df) + geom_point(mapping = aes(x = Cocoa.Percent, y = Rating)) + labs(title= "Suggested Chocolate")