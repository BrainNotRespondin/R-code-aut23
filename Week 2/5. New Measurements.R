d <- read.csv("speedLight.csv") # read the CSV file
newSpeed <- d$speed # extract the speed column
newSpeed <- newSpeed / 1000

speed <-morley$Speed
speed <- speed + 299000
hist(speed)

m <- mean(speed)
s <- sd(speed)

new_M <- mean(newSpeed)
new_S <- sd(newSpeed)

speedDiff <- m - new_M
print(
  paste(
      "The difference is: ", speedDiff
  )
)

quartile(speed, probs=0.25)

(x <- round(runif(10)*10))
sort (x)