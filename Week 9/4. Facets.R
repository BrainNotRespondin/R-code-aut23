library("ggplot2")

#Question 1
ggplot(data = iris) +
  geom_point(mapping = aes(x = Sepal.Length, y = Petal.Length)) +
  labs(x = "Sepal Length", y = "Petal Length", title = "iris faceted by species") +
  facet_wrap(~ Species, nrow = 1)

#Question 2
ggplot(data = mpg)+
  geom_boxplot(mapping = aes(x=factor(year),y=cty))+
  facet_wrap(~ cyl, nrow = 1)+
  labs(x="Year", y="City miles per gallon", title = "mpg faceted by cyl")

#Question 3
ggplot(data = midwest)+
  geom_point(mapping = aes(x=popblack,y=popwhite))+
  facet_wrap(~ state,nrow = 2)+
  labs(x="Number of white people", y = "Number of black people", 
       title="midwest faceted by state")

#Question 4
ggplot(data = mpg)+
  geom_point(mapping = aes(x=cty,y=hwy))+
  facet_wrap(trans~drv)+ 
  labs(y = "Highway miles per gallon", 
       x = "City miles per gallon",
      title = "mpg faceted by trans and drv")

#Question 5
ggplot(data = mtcars) +
  geom_histogram(mapping = aes(x = mpg, fill = factor(cyl)), bins = 10) +
  labs(y = "Frequency", x = "Miles per gallon", fill = "Cylinders",
       title = "mtcars faceted by am") +
  facet_wrap(~ am)

#Question 6
ggplot(data = mtcars) +
  geom_point(mapping = aes(x = disp, y = mpg)) +
  geom_smooth(mapping = aes(x = disp, y = mpg), method = "lm") +
  labs(x = "Displacement", y = "Miles per gallon", title = "mtcars faceted by gear") +
  facet_wrap(~ gear)
