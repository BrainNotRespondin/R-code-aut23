v <- c("dog", "cat", "chicken", "rabbit", "cow", "horse")
m <- matrix(1:20, nrow = 4, ncol = 5)
l <- list(list(method = "knn", repetitions = 40, accuracy = 0.67, std_err = 0.04),
          list(method = "svm", repetitions = 20, accuracy = 0.78, std_err = 0.12))
d <- data.frame(country = c("Australia", "New Zealand", "India"),
                battingAverage = c(25.6, 24.8, 29.3),
                bowlingAverage = c(22.1, 21.6, 25.2))

(v[3]) #q1
(v[-3]) #q2
c(v[2], v[4]) #q3
(v[-c(2,4)]) #q4
(m[2,3]) #q5
(m[,5]) #q6
(m[2,]) #q7
m[c(1,2),c(3,4)]
(m[,-3]) #q9



d$battingAverage[1] #q
d[c(1,2),c("country","battingAverage")] #q20
