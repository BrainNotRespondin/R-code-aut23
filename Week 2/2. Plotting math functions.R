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
