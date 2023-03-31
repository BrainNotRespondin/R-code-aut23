primes <- c(2)
n=1:100
for (a in n){
  PrimeQ = FALSE
  for (p in primes){
    is_divisable = ((a %% p) == 0)
    if(is_divisable){
      PrimeQ = FALSE
    }
  }
  if (PrimeQ){
    primes <- c(primes, a)
  }
}
print(primes)



primes <- c(2)
for (a in 3:1000){
  PrimeQ = TRUE
  for (prime in primes){
    if ((a%%prime)==0){
      PrimeQ=FALSE
      break
    }
  }
  if (PrimeQ) {
    primes <- c(primes, a)
  }
}
primes
