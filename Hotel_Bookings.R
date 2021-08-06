#Exploring Hotel Booking CSV File

hotel_bookings <- read_csv("hotel_bookings.csv")

head(hotel_bookings)

colnames(hotel_bookings)

hotel_bookings

view(hotel_bookings)

filter(hotel_bookings, is_canceled == 1)

view(filter(hotel_bookings, is_canceled == 1))

view(filter(hotel_bookings, lead_time >= 700))

fun_filter <- hotel_bookings %>% 
  filter( is_canceled == 1, lead_time >= 600, hotel == "City Hotel") %>% 
  group_by(lead_time)

view(fun_filter)

count(hotel_bookings, is_canceled == 1)

count(hotel_bookings, arrival_date_year == 2017)

