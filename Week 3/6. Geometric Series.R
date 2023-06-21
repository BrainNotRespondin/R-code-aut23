r <- 0.6 # choose a value of r between 0 and 1
n <- 10 # choose an integer for n greater than 0
g <- 0 # set the sum to zero, so we can add to it
## Sum the elements of the series
for (k in 0:n) {
  g <- g + rˆk
}
## Compare to the closed form
(1 - rˆ(n+1))/(1 - r)
## For large n we get
r <- 0.6 # choose a value of r between 0 and 1
n <- 10^7 # choose a large integer for n
g <- 0 # set the sum to zero, so we can add to it
## Sum the elements of the series
for (k in 0:n) {
  g <- g + rˆk
}
## Compare to closed form
1/(1 - r)