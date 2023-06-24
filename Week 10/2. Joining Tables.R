library("DBI")
library(tidyverse)
library(nycflights13)

# Q1
flightAirline <- flights %>%
  inner_join(airlines, by = "carrier") %>%
  select("name", "origin", "dest", "year", "month", "day")
flightAirline

# Q2
flightPlane <- flights %>%
  left_join(planes, by = "tailnum") %>% 
  select("origin", "dest", "year.x", "month", "day", "type", "manufacturer")
flightPlane

# Q3
flightAirport <- flights %>%
  full_join(airports, by=c("origin" = "faa")) %>%
  select("origin", "name", "dest", "year", "month", "day")
flightAirport

# Q4
flightWeather <- flights %>%
  right_join(weather, by = c("year", "month", "day", "hour", "origin"))%>%
  select("origin", "dest", "year", "month", "day", "hour", "temp")
flightWeather

# Q5
airportWeather <- airports %>%
  right_join(weather, by = c("faa" = "origin")) %>%
  select("faa", "name", "year", "month", "day", "hour", "temp")
airportWeather

# Q6
flightAirport2 <- flights %>%
  left_join(airports, by = c("origin" = "faa")) %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  select("origin", "name.x", "dest", "name.y", "year", "month", "day")