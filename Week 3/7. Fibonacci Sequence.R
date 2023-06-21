n1 <- 0
n2 <- 1
fib <- c(n1,n2)
## compute the next 98 numbers
for (a in 1:98) {
  ## the next number is the sum of the previous two
  n3 <- n1 + n2
  fib <- c(fib, n3)
  ## replace the previous two with the new previous two
  n1 <- n2
  n2 <- n3
}
print(fib)
