hotel_bookings <- read.csv("hotel_bookings.csv")

ggplot(data=hotel_bookings) + geom_point(mapping = aes(x=lead_time,y=children))

ggplot(data = hotel_bookings) + geom_point(mapping = aes(x=stays_in_weekend_nights,y=children))

view(hotel_bookings)

hotel_bookings_averages_year <- hotel_bookings %>% 
  filter(hotel_bookings$arrival_date_year=="2017") %>% 
  group_by(hotel) %>% 
  summarise(mean_stays_in_weekend_nights=mean(stays_in_weekend_nights),mean_stays_in_week_nights=mean(stays_in_week_nights))

head(hotel_bookings_averages_year)

hotel_bookings_2017 <- filter(hotel_bookings, hotel_bookings$arrival_date_year=="2017")

head(hotel_bookings_2017)

view(hotel_bookings_2017)

ggplot(data=hotel_bookings_2017) + geom_point(mapping = aes(x=lead_time,y=children))