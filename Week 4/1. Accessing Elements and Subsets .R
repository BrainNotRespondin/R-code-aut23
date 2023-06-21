v <- c("dog", "cat", "chicken", "rabbit", "cow", "horse")
m <- matrix(1:20, nrow = 4, ncol = 5)
l <- list(list(method = "knn", repetitions = 40, accuracy = 0.67, std_err = 0.04),
          list(method = "svm", repetitions = 20, accuracy = 0.78, std_err = 0.12))
d <- data.frame(country = c("Australia", "New Zealand", "India"),
                battingAverage = c(25.6, 24.8, 29.3),
                bowlingAverage = c(22.1, 21.6, 25.2))
#q1
(v[3]) 

#q2
(v[-3]) 

#q3
c(v[2], v[4]) 

#q4
(v[-c(2,4)]) 

#q5
(m[2,3]) 

#q6
(m[,5])

#q7
(m[2,]) 

#q8
m[c(1,2),c(3,4)]

#q9
(m[,-3]) 

#q10
(m[-1,])

#q11
(l[[1]])

#q12
(l[[2]]$accuracy)

#q13
(l[[1]][c("method","accuracy")])

#q14
(d[,1])

#q15
(d[2,])

#q16
(d$battingAverage)

#q17
d[c("country","battingAverage")]

#q18
(d$battingAverage[1])

#q19
(d$battingAverage[c(1,2)])

#q20
d[c(1,2),c("country","battingAverage")] 
