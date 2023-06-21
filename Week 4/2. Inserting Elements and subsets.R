v <- c("dog", "cat", "chicken", "rabbit", "cow", "horse")
m <- matrix(1:20, nrow = 4, ncol = 5)
l <- list(list(method = "knn", repetitions = 40, accuracy = 0.67, std_err = 0.04),
          list(method = "svm", repetitions = 20, accuracy = 0.78, std_err = 0.12))
d <- data.frame(country = c("Australia", "New Zealand", "India"),
                battingAverage = c(25.6, 24.8, 29.3),
                bowlingAverage = c(22.1, 21.6, 25.2))
#q1
v[3]<-"goat"

#q2
v[c(4,5)]<-"goat"

#q3
v[c(1,5)]<-c("rat","snake")

#q4
m[3,4]<-100

#q5
m[,2]<-100

#q6
m[3,]<-90

#q7
m[4,]<-c(1,2,3,4,5)

#q8
m[c(3,4), c(4,5)] <- m[c(1,2), c(1,2)]

#q9
(l[[1]]$method <- "xnn")

#q10
(l[[1]]$validated <- TRUE)

#q11
(l[[2]]<-NA)

#q12
(d$battingAverage[3] <- 31.2)

#q13
(d$bowlingAverage <- NA)

#q14
levels(d$country) <- c("Australia", "New Zealand", "India", "England", "Zimbabwe", "South Africa")
d$country[c(1,2,3)] <- c("England", "Zimbabwe", "South Africa")
