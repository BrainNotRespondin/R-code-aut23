#old code from q3
speed <-morley$Speed
speed <- speed + 299000
hist(speed)
m <- mean(speed)
sd <- sd(speed)
mean(speed) - 299272.458


# q1 Get user input
userInput <- scan(n=1)

# q2 Calculate difference between mean of old and user input
diff <- m - userInput
diff

#q3
k <- 1.5
iqr <-IQR(speed)
q3<-quantile(speed, probs = 0.75)
q1<-quantile(speed, probs = 0.25)
lowerThreshold <- q1 - k*iqr
upperThreshold <- q3 + k*iqr
lowerThreshold
upperThreshold
