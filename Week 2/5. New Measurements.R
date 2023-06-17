CSV <- read.csv("speedLight.csv") # read the CSV file
newSpeed <- CSV$speed # extract the speed column
newSpeed <- newSpeed / 1000 # Convert to km/s

speed <-morley$Speed
speed <- speed + 299000
hist(speed)

m <- mean(speed)
s <- sd(speed)

new_M <- mean(newSpeed, na.rm = TRUE)
new_S <- sd(newSpeed, na.rm = TRUE)

speedDiff <- m - new_M
cat("The difference is: ", speedDiff)


q1 <- quantile(speed, probs = 0.25)
q3 <- quantile(speed, probs = 0.75)
cat("The first and third quartile of the previous data are", q1, "and", q3, "km/s.\n")
q1new <- quantile(newSpeed, probs = 0.25, na.rm = TRUE)
q3new <- quantile(newSpeed, probs = 0.75, na.rm = TRUE)
cat("The first and third quartile of the new data are", q1new, "and", q3new, "km/s.\n")

