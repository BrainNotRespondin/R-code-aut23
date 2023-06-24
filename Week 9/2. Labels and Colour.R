library("ggplot2")

#Question 1
ggplot(data=mtcars)+
  geom_point(mapping=aes(x = drat,y=hp)) +
  labs(title = "1973-74 Models", x = "Rear axle ratio", y = "Gross horsepower")

#Question 2 
ggplot(data = mtcars) +
  geom_col(mapping = aes(x = mpg, y = rownames(mtcars))) +
  labs(y = "Model", x = "Miles per Gallon", title = "1973-74 Models")

#Question 3 
ggplot(data = mtcars) +
  geom_boxplot(mapping = aes(x = hp, y = factor(cyl))) +
  labs(x = "Gross horsepower", y = "Number of cylinders", title = "1973-74 Models")

#Question 4
ggplot(data=mtcars, mapping = aes(x=disp, y=mpg))+
  geom_point(mapping = aes(color = factor(carb)))+ 
  labs(title = "1973-74 Models",x = "Displacement", y="Miles per gallon") 

#Question 5
ggplot(data = mtcars) +
  geom_histogram(mapping = aes(x = mpg, fill = factor(cyl)), bins = 10) +
  labs(x = "Miles per gallon", y = "Frequency", title = "1973-74 Models",
       fill = "Cylinders")
#Question 6
ggplot(data = mtcars)+
  geom_point(mapping = aes(x=wt,y=mpg,col=hp))+
  labs(x="Weight", y="Miles per gallon", title = "1973-74 Models", col="Gross Horsepower")
  
