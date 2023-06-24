largeLogisitcMap <- function(r, x0 = 0.5, record = 100) {
  ## allocate vector for wanted values
  xLarge <- rep(0, record)
  x <- x0 # initial x
  ## iterate through 1000 values
  for (a in 1:1000) {
    x <- r*x*(1-x)
  }
  ## record the next "record" number of iterations
  for (a in 1:record) {
    x <- r*x*(1-x)
    xLarge[a] <- x
  }
  return(xLarge)
}
## values of r to investigate
rSet <- seq(from = 0, by = 0.01, to = 4)
n <- length(rSet)
record = 100 # number of interations to record
A <- matrix(0, n, record) # matrix to store results
for (a in 1:n) {
  r <- rSet[a] # get value of r
  A[a,] <- largeLogisitcMap(r) # compute x values
}
## plot each value of x with its value of r
plot(rSet, A[,1], type = "l")
for (a in 2:record) {
  lines(rSet, A[,a], type = "l")
}
