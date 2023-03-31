speed <-morley$Speed
speed <- speed + 299000
hist(speed)

m <- mean(speed)
s <- sd(speed)
actual <- 299272.458
d <- m - actual
print (d)

help(morley)
