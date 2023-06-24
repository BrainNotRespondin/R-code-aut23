times <- list(
  list(name = "Garry", age = 34, times = c(45, 67, 56, 46, 78)),
  list(name = "Sue", age = 28, times = c(34, 57, 45, 46, 88, 57, 34)),
  list(name = "Pete", age = 25, times = c(76, 23)),
  list(name = "Jan", age = 41, times = c(90, 78, 67, 64, 57, 48, 47, 47))
)

#Q1
meanTime <- function(x){
  return(mean(x$times))
}
lapply(times, meanTime)

#Q2
normalisedMean <- function(x){
  return(mean(x$times)/x$age)
}
lapply(times, normalisedMean)
