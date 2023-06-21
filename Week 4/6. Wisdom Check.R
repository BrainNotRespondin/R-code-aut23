character <- list(Name = "Fengar the Fearless", 
          Class = "Paladin",
          Race = "Human",
          attributes = list(
            str = 10, dex = 13, int = 11, wis = 14, chr = 15, con = 9
          ),
          equipment = list(
            "Plate Armour", "Long sword", "Potion of healing", "Relic of St. Leovold"
          ))

bonus <- floor((character[["attributes"]][["wis"]] - 9)/2)
roll <- sample(20, size = 1)
if ((roll + bonus) > 10) {
  print("Check passed.")
} else {
  print("Check failed.")
}
