z <- c(12, 34, 45, 23, 16)
x <- 21
count <- 0
for (item in z) {
  if (item > x){
    count = count + 1
  }
}

cat("There are", count, "Items that are bigger than", x)
