head(morley)
speed <-morley$Speed

#q1
speed <- speed + 299000

#q2
hist(speed)

#q3
mean(speed)
sd(speed)

#q4 (number is equal to SOL)
mean(speed) - 299272.458


