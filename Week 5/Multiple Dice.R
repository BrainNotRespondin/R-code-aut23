dice <- data.frame(
  sides = c(4, 8, 10, 10),
  exploding = c(TRUE, FALSE, TRUE, FALSE)
)
mutliRoll <- function(dice){
  results = mapply(die_roll, dices[["sides"]], dice[["exploding"]])
  return(sum(results))
}

multiRoll(dice)