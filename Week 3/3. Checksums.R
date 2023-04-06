#generate the vector
v <- sample(0:9, size = 7, replace = TRUE)

#compute the checksum
check <- 10 - (sum(v) %% 10)
#append the checksum to the vector
vcheck <- c(v, check)

if ((sum(vcheck) %% 10) == 0) {
  print("Data is valid.")
} else {
  print("Data is invalid.")
}

e <- sample(c(1, rep(0, 7)))*sample(c(1,-1))
vcheckCorrupt <- vcheck + e

if ((sum(vcheckCorrupt) %% 10) == 0) {
  print("Data is valid.")
} else {
  print("Data is invalid.")
}
