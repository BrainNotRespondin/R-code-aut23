x <- 5
Y <- 0
#Q1
Q1 <- function(x){
  y <- 3*x+9
  return(y)
}
plot(Q1)

#Q2
Q2 <- function(x){
  y <- (-2*x^2)+4*x+1
  return(y)
}
Q2(x)

#Q3
Q3 <- function(x){
  (-x^3)+(4*x^2)+10*x-7
}
Q3(x)

#Q4
Q4 <- function(x){
  y <- log(x, base = 10)
  return(y)
}
Q4(x)

#Q5
Q5 <- function (x){
  y <- sin(x)
  return(y)
}

Q5(x)

#Q6
Q6 <- function (x){
  y <- cos(x/10)
  return(y)
}
Q6(x)

#Q7
Q7 <- function (x){
  y <- sin(x/2)/x
  return(y)
}
Q7(x)


#Q8
Q8 <- function (x){
  y <- 1/(1 + exp(-x/5))
  return(y)
}
Q8(x)
