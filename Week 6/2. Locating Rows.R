main <- function(){
  q5()
}

q1() <- function(){
  pos <- which.max(mtcars$mpg)
  mtcars[pos, ]
}

q2 <- function(){
  i <- which.max(mtcars$hp / mtcars$cyl)
  print(mtcars[i,])
}

q3 <- function(){
  d <- subset(mtcars,subset = (cyl == 6))
  i <- which.max(d$mpg)
  print(d[i,])
}

q4 <-function(){
  d < subset(mtcars,subset = (cyl ==4))
  i <- sd(d$disp)
  print(d[i,])
  }
q5 <- function(){
  df <- subset(mtcars, subset=(vs == 0))
  mean(df$am == 0)
}
q6() <- function(){
  df <- subset(mtcars,subset=(mpg > 25))
  table(df$carb)
}

q7() <- function(){
  hist(mtcars$drat)
}

q8() <- function(){
  table(mtcars$vs, mtcars$am)
}

main()

