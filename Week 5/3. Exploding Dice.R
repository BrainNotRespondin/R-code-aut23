explodingDie <- function(sides = 6) {
  total <- 0 # initialise total of all rolls to 0
  x <- sample(6, size = 1) # roll die
  while (x == 6) { # while outcome is a maximum
    total <- total + x # add the outcome to the total
    x <- sample(6, size = 1) # roll again
  }
  total <- total + x # add the outcome to the total
  return(total) # return the total
}
explodingDie()
