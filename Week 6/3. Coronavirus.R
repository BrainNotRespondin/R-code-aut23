# load data
d <- read.csv("/tmp/epiSEIHCRD_combAge.csv")
# We find that the time variable is not of type Date
# So it is changed to date type where time 0 is 1/3/2020
d$t <- as.Date(d$t, origin = "2020-03-01")
# The default palette is not suitable for those with colour blindness
# Set the colour palette for plots
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442",
                "#0072B2", "#D55E00", "#CC79A7")
palette(cbbPalette)
# Check that the population is constant for all rows.
# A plot of the population size at every time show that it
# is constant for all time.
plot(rowSums(d[,-1]), ylim = c(0, 6000000))
plot(rowSums(d[,-1]))
summary(rowSums(d[,-1])) # or make sure that mean is the population and sd is zero.
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
# First find the first row number where H > 1000
pos <- min(which(d$H > 1000))
startH <- d$t[pos] # obtain the time at that row number
# By day 75, 1000 hospital beds will be needed.
#--- How long is the period for which more than 1000 hospital
# beds are required?
# Find the last time in which H > 1000
endH <- d$t[max(which(d$H > 1000))]
endH - startH # then the period is the end - the start
# The expected period will be 221.25 days
#--- When will the number of deaths reach more than 100 expected
# per day?
# To find the deaths per day, we must find the difference in the number
# of deaths for each day. E.g the number of deaths at day 2 - the number
# of deaths at day 1 provides the number of deaths for that day.
# Each row is a quarter of a day. So for the times 0, 0.25, 0.5, 0.75, 1,
# we want to subtract the 1 from the 0, 1.25 from 0.25, 1.5 from 0.5 and so on
deaths2 <- d$D[-c(1:4)] # deaths starting from day 1
deaths <- d$D[1:(length(d$D) - 4)] # deaths starting from day 0 with last day removed
time <- d$t[1:length(deaths)] # time with last day removed
dailyDeaths <- deaths2 - deaths # change in deaths for each day
plot(time, dailyDeaths, type = "l") # plot new deaths for each day
# first row position where new deaths pass 100 per day
pos <- min(which(dailyDeaths > 100))
# time when new deaths pass 100 per day
time[pos]
# The number of deaths will pass 100 per day on day 112
#-- When will the most number of people be infected?
# To find this we need to find the peak of the I column
d$t[which.max(d$I)]
# The peak infection rate will occur on day 173
#-- When will the hospitalisation rate start to decrease?
# The hospitalisation *rate* is the number of newly hospitalised people
# for each time.
# To identify this we can examine the differences between each
# hospitalisation time.
plot(diff(d$H), type = "l")
# We can see that there is one peak.
pos <- which.max(diff(d$H)) # row position of peak
d$t[pos]
# The peak infection rate occurs on day 145.