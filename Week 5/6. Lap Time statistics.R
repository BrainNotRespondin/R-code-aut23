#q1
times <- list(
  Garry = c(45, 67, 56, 46, 78),
  Sue = c(34, 57, 45, 46, 88, 57, 34),
  Pete = c(76, 23),
  Jan = c(90, 78, 67, 64, 57, 48, 47, 47)
)
times

#q2
meanTimes <- lapply(times, mean)
meanTimes

#q3
SDTimes <- lapply(times, sd)
SDTimes

#q4
lengthTimes <- lapply(times, length)
lengthTimes

#q5
minuteProp <- function(x) {
  return(mean(x < 60))
}
lapply(times, minuteProp)
