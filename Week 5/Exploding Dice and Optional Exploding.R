exploding_dice <- function(sides=6){
  total <- 0
  roll <- sample(sides,size =1)
  while (roll == sides){
    total = total + roll
    roll <- sample(sides,size =1)
  }
  (total = total + roll)
}

exploding_dice()

sim <- replicate(1000, exploding_dice())
hist(sim)

die_roll <- function(sides, exploding = FALSE){
  if (exploding){
    exploding_dice(sides)
  } else {
    sample(sides,size=1)
  }
}

die_roll()