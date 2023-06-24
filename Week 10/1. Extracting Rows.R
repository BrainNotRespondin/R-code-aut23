library("DBI")
library(tidyverse)
library(nycflights13)

# Q1
flights %>% 
  filter(dep_delay > 600) %>%
  select(year, month, day, dep_delay)

# Q2
weather %>% 
  filter(temp > 100) %>%
  select(temp, humid)

# Q3
airlines %>%
  filter(carrier == "WN") %>%
  select(name, carrier)

# Q4
planes %>% 
  filter((engines == 4) & (manufacturer == "BOEING")) %>%
  select(tailnum)

# Q5
airports %>% 
  filter((lat > 40) & (lat < 42) & (lon > -82) & (lon < -80)) %>%
  select(faa, name)

# Q6
flights %>% filter(abs(dep_delay) <= 1) %>%
  select(time_hour)
