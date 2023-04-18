main <- function(){
  q9()
}

q1 <- function(){
  print(subset(mtcars,subset = (cyl == 6)))
}

q2 <- function(){
  print(subset(mtcars,subset = (am == 1)))
}

q3 <- function(){
  print(subset(mtcars, subset = (hp < 100)))
}

q4 <- function(){
  print(subset(mtcars, subset = (drat >= 3 & drat <= 4)))
}

q5 <- function(){
  print(subset(mtcars, subset = (vs == 0 & cyl < 3)))
}

q6 <- function(){
  print(subset(mtcars, subset = (am == 0 & gear > 3)))
}

q7 <- function(){
  print(subset(mtcars, subset = (hp<100 & hp>200)))
}

q8 <- function(){
  print(subset(mtcars, subset = ((mpg > 20 & cyl == 6) || (mpg>30 & cyl == 4))))
}

q9 <- function(){
  print(subset(mtcars, subset = ((hp/cyl)>30)))
}
main()
