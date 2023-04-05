#x^2
n = 100
x = seq(from=-30, to=30,length.out=n)
y=1/(1+exp(-x/5))
plot(x,y,type ="l",
     xlab = "X axis",
     ylab = "Y axis",
     main = "My parabola"
     )

curve(1/(1+exp(-x/5)), from=-30, to=30)

#setup variable for questions
x<- -50:50

#q1
y <- 3*x + 9

#q2
y <- (2*x^2)+(4*x) +1

#q3
plot((-x^3)+(4*x^2)+(10*x)-7)

#q4
plot(log(x))

#q5
plot(sin(x))

#q6
plot(cos(x/10))

#q7
plot(sin(x/2)/x)

#q8
plot(1/(1+exp(-x/5)))
