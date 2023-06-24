dieRoll <- function(sides=6, exploding = FALSE) {
  if (exploding == TRUE) {
    result <- explodingDie(sides)
  } else {
    result <- sample(sides, size = 1)
  }
  return(result)
}
dieRoll()
