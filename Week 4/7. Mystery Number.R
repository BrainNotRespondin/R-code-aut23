n <- 100
mysteryNumber <- sample(n, size = 1)
candidates <- 1:n
while(length(candidates) > 1) {
  middlePos <- round(length(candidates)/2)
  if (mysteryNumber > candidates[middlePos]) {
    candidates <- candidates[middlePos+1]:candidates[length(candidates)]
  } else {
    candidates <- candidates[1]:candidates[middlePos]
  }
}
print("The mystery number is: ")
print(candidates)
