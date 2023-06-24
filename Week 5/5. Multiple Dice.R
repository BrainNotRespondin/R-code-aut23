dieRoll <- function(sides=6, exploding = FALSE) {
  if (exploding == TRUE) {
    result <- explodingDie(sides)
  } else {
    result <- sample(sides, size = 1)
  }
  return(result)
}
dieRoll()

dice <- data.frame(
  sides = c(4, 8, 10, 10),
  exploding = c(TRUE, FALSE, TRUE, FALSE)
)
multiRoll <- function(dice){
  results = mapply(dieRoll, dice$sides, dice$exploding)
  return(sum(results))
}

multiRoll(dice)
