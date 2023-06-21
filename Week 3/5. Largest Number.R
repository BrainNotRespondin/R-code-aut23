##########################################################
## Largest Number
## Create vector of n values
n <- 10
v <- sample(100, size = n)
largest <- head(v, n = 1)
remaining <- tail(v, n = -1)

for(int in remaining) {
  first <- head(remaining, n = 1)
  if (first > largest) {
    largest <- first
  }
  remaining <- tail(remaining, n = -1)
}

cat("The largest number is: ", largest)
