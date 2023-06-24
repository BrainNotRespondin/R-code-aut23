library("dplyr")
# Sydney Coronavirus Analysis
# Written by Laurence Park <lapark@westernsydney.edu.au>
# 7th of September 2021
# Description:
# Analysis of simulated coronavirus data for the Sydney population
# when intervention was not provided.
# load data
d <- read.csv("data/epiSEIHCRD_combAge.csv")
# We find that the time variable is not of type Date
# So it is changed to date type where time 0 is 1/3/2020
d <- d %>% mutate(t = as.Date(t, origin = "2020-03-01"))
# The default palette is not suitable for those with colour blindness
# Set the colour palette for plots
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442",
                "#0072B2", "#D55E00", "#CC79A7")
palette(cbbPalette)
# Check that the population is constant for all rows.
# A plot of the population size at every time show that it
# is constant for all time.
d %>% select(!t) %>% rowSums() %>% plot(, ylim = c(0, 6000000))
# We can also examine the quantiles to show that they are all equal
d %>% select(!t) %>% rowSums() %>% summary()
# Visualising the Variables
plot(d$t, d$S, type = "l", ylim = c(100,5500000), log = "y", col = 1)
lines(d$t, d$E, col = 2)
lines(d$t, d$I, col = 3)
lines(d$t, d$H, col = 4)
lines(d$t, d$C, col = 5)
lines(d$t, d$R, col = 6)
lines(d$t, d$D, col = 7)
legend("topright", c("S", "E", "I", "H", "C", "R", "D"), col = 1:7,
       lty = 1)

#--- When will more than 1000 hospital beds be required?
# Filter out only the rows where H > 1000, then show the time of the first entry
d %>% filter(H > 1000) %>% slice(1) %>% select(t)
# 1000 hospital beds will be needed by 15th of May 2020.
#--- How long is the period for which more than 1000 hospital
# beds are required?
# Filter out the required days, compute the max and min time using `range`,
# then find the difference of the two using `diff`.
d %>% filter(H > 1000) %>% summarise(interval = diff(range(t)))
# The expected period will be 221.25 days
#--- When will the number of deaths reach more than 100 expected
# per day?
# To find the deaths per day, we must find the difference in the number
# of deaths for each day. E.g the number of deaths at day 2 - the number
# of deaths at day 1 provides the number of deaths for that day.
# Each row is a quarter of a day. So for the times 0, 0.25, 0.5, 0.75, 1,
# we want to subtract the 1 from the 0, 1.25 from 0.25, 1.5 from 0.5 and so on
# So we need to subtract each count by the count four time steps before.
d %>% mutate(yesterdayD = c(0,0,0,0, D[1:(nrow(d)-4)])) %>%
  mutate(todayD = D - yesterdayD) %>%
  filter(todayD > 100) %>%
  slice(1) %>% select(t)
# The number of deaths will pass 100 per day on the 22nd of Jume 2020.
#-- When will the most number of people be infected?
# To find this we need to find the peak of the I column
d %>% slice_max(I) %>% select(t)
# The peak infection rate will occur on day 21st of August 2020
#-- When will the hospitalisation rate start to decrease?
# The hospitalisation *rate* is the number of newly hospitalised people
# for each time.
# To identify this we can examine the differences between each
# hospitalisation time.
plot(diff(d$H), type = "l")
# We can see that there is one peak.
d %>% mutate(rateH = c(0, diff(H))) %>% slice_max(rateH) %>% select(t)
# The peak infection rate occurs on 24th of July 2020

