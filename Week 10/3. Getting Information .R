library("DBI")
library(tidyverse)
library(nycflights13)

# Q1
flights %>% left_join(weather, by = c("year", "month", "day", "hour", "origin")) %>%
  filter(dep_delay > 600) %>% 
  select(dep_delay, temp)


# Q2
flights %>% left_join(weather, by = c("year", "month", "day", "hour", "origin")) %>%
  filter(temp > 100) %>% select(temp, tailnum)

# Q3
flights %>% left_join(airlines, by = "carrier") %>%
  filter((year == 2013) & (month == 12) & (day == 25)) %>%
  select(name)

# Q4
flights %>% left_join(weather, by = c("year", "month", "day", "hour", "origin")) %>%
  filter(temp > 100) %>%
  left_join(planes, by = "tailnum") %>%
  select(manufacturer)

# Q5
flights %>% left_join(planes, by = "tailnum") %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  filter(engines == 4) %>%
  select(engines, name)

# Q6
flights %>% left_join(planes, by = "tailnum") %>%
  left_join(airports, by = c("origin" = "faa")) %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  left_join(weather, by = c("year.x" = "year", "month", "day", "hour", "origin")) %>%
  filter(engines == 4) %>% filter(temp > 80) %>%
  select(engines, temp, name.x, name.y)
