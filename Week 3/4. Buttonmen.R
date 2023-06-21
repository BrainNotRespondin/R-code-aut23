p1d1 <- sample(1:10, size = 1)
p1d2 <- sample(1:10, size = 1)
p2d1 <- sample(1:10, size = 1)
print(paste("Our dice:", p1d1, ",", p1d2, ". Opponents die:", p2d1))
## Check for Power Attack
if (p1d1 >= p2d1) {
  print("Power attack with d1.")
}
if (p1d2 >= p2d1) {
  print("Power attack with d2.")
}
## Check for Skill Attack
if (p1d1 == p2d1) {
  print("Skill attack with d1.")
}
if (p1d2 == p2d1) {
  print("Skill attack with d2.")
}
if ((p1d1 + p1d2) == p2d1) {
  print("Skill attack with d1 and d2.")
}
