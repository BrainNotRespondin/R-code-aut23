library("ggplot2")

#Question 1
ggplot(data=mtcars)+
  geom_point(mapping=aes(x = drat,y=hp)) +
  labs(title = "1973-74 Models", x = "Rear axle ratio", y = "Gross horsepower")

#Question 2 fix
ggplot(data=mtcars)+
  geom_bar(mapping=aes(y=mpg))+coord_flip()+
  labs(title = "1973-74 Models")

#Question 3 fix
ggplot(data = mtcars, mapping = aes(y=hp, x = cyl))+
  geom_boxplot()

#Question 4
ggplot(data=mtcars, mapping = aes(x=disp, y=mpg))+
  geom_point(mapping = aes(color = factor(carb)))+ 
  labs(title = "1973-74 Models",x = "Displacement", y="Miles per gallon") 

%>% #Question 5
ggplot(data=mtcars, mapping = aes(x=mpg,))+
  geom_bar()
