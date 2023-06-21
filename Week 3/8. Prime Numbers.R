## create variable to store primes
primes <- c(2)
## for each integer
for (a in 3:1000) {
  notPrime = FALSE
  ## compare the ineger to each known prime
  for (prime in primes) {
    ## if the number is divisible by a prime, then it is not prime
    if ((a %% prime) == 0) {
      notPrime = TRUE
      break
    }
  }
  ## if it is prime, add it to the list
  if (notPrime == FALSE) {
    primes <- c(primes, a)
  }
}
