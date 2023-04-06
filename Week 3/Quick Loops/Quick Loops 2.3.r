x = c(12,34,45,23,16)
i = 0
count = 0
for (it in items){
  if (it > x){
    i = i + 1
  }
}
print(paste(count, "number are greater"))
