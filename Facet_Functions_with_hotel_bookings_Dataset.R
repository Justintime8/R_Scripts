#Facet and bar charts with hotell bookings Dataset

install.packages("ggplot2")

hotel_bookings <- read.csv("hotel_bookings.csv")

ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel))

ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type))

ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel, fill = market_segment))

ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap(~deposit_type)

ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap(~deposit_type) + theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap(~market_segment) + theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_grid(~deposit_type) + theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap(~deposit_type~market_segment) + theme(axis.text.x = element_text(angle = 45))
