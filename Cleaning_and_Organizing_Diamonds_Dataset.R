# clean and organizing data from Diamonds dataset

head(diamonds)

str(diamonds)

glimpse(diamonds)

rename(diamonds, carat_new = carat)

rename(diamonds, cut_new = cut)

summarize(diamonds, mean_carat = mean(carat))

summarise(diamonds, range_price = range(price))

ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  +     geom_point() +
  +     facet_wrap(~cut)
>