n <- 1000 # length of sequence
r <- 3.75 # set this to view the results
xSet <- rep(0, n)
xSet[1] <- 0.5 # initial x value
for (a in 2:n) {
  ## the next x depends on the previous
  xSet[a] <- r*xSet[a-1]*(1 - xSet[a-1])
}
## plot the results as a line
plot(xSet, type = "l", ylim = c(0,1))
