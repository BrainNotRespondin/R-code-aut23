n <- 100

r <- 3
x_set <- rep(0,9)
x_set[1] <- 0.5

for (a in 2:n) {
  x_set[a] <- r * x_set[a-1]*(1-x_set[a-1])
}

plot (x_set, type="l", ylim = c(0,1))
