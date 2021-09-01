# database installment for bike capstone project

install.packages("tidyverse")

install.packages("ggplot2")

library(ggplot2)

library(tidyverse)

july_2021 <- read.csv("202107-divvy-tripdata-clean.csv")

june_2021 <- read.csv("202106-divvy-tripdata_clean.csv")

may_2021 <- read.csv("202105-divvy-tripdata_clean.csv")

april_2021 <- read.csv("202104-divvy-tripdata_clean.csv")

march_2021 <- read.csv("202103-divvy-tripdata_clean.csv")

feb_2021 <- read.csv("202102-divvy-tripdata_clean.csv")

jan_2021 <- read.csv("202101-divvy-tripdata_clean.csv")

dec_2020 <- read.csv("202012-divvy-tripdata_clean.csv")

nov_2020 <- read.csv("202011-divvy-tripdata_clean.csv")

oct_2020 <- read.csv("202010-divvy-tripdata_clean.csv")

sept_2020 <- read.csv("202009-divvy-tripdata_clean.csv")

aug_2020 <- read.csv("202008-divvy-tripdata_clean.csv")


colnames(july_2021)

july_2021 <- mutate( july_2021, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id), end_station_id = as.character.numeric_version(end_station_id))

june_2021 <- mutate( june_2021, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id), end_station_id = as.character.numeric_version(end_station_id))

may_2021 <- mutate( may_2021, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type),start_station_id = as.character.numeric_version(start_station_id), end_station_id = as.character.numeric_version(end_station_id))

april_2021 <- mutate( april_2021, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id),  end_station_id = as.character.numeric_version(end_station_id))

march_2021 <- mutate( march_2021, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id), end_station_id = as.character.numeric_version(end_station_id))

feb_2021 <- mutate( feb_2021, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id), end_station_id = as.character.numeric_version(end_station_id))

jan_2021 <- mutate( jan_2021, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id),  end_station_id = as.character.numeric_version(end_station_id))

dec_2020 <- mutate( dec_2020, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id),  end_station_id = as.character.numeric_version(end_station_id))

nov_2020 <- mutate( nov_2020, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id), end_station_id = as.character.numeric_version(end_station_id))

oct_2020 <- mutate( oct_2020, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id), end_station_id = as.character.numeric_version(end_station_id))

sept_2020 <- mutate( sept_2020, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id),  end_station_id = as.character.numeric_version(end_station_id))

aug_2020 <- mutate( aug_2020, ride_id = as.character(ride_id), rideable_type = as.character(rideable_type), start_station_id = as.character.numeric_version(start_station_id), end_station_id = as.character.numeric_version(end_station_id))

all_trips <- bind_rows(july_2021, june_2021, may_2021, april_2021, march_2021, feb_2021, jan_2021, dec_2020, nov_2020, oct_2020, sept_2020, aug_2020)

colnames(all_trips)

view(june_2021$max_ride_length)

july_2021 %>% 
  ggplot(aes(x = day_of_week, y = ride_length, fill = member_casual )) + geom_col(position = "dodge")

all_trips_v2 <- all_trips[all_trips$start_station_name == "HQ QR" | all_trips$ride_length<0,]

max(all_trips_v2$ride_length)

