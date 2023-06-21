n <- 100
A <- matrix(0, n, n)

for (a in 1:n) {
  for (b in 1:n) {
    A[a,b] <- a + b
  }
}
image(A)
