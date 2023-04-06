OS <- c("Linux", "OSX", "Windows")
for (os1 in OS){
  for(os2 in OS){
    if (os1 > os2) {
      print(paste(os1, "is greater than", os2))
    } else {
      print(paste(os1, "is not greater than", os2))
    }
  }
}
