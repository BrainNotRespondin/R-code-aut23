library("ggplot2")
head(iris)
#Question 1
ggplot(iris)+
  geom_point(mapping = aes(x =Sepal.Length,y=Sepal.Width, col=Species))+
  labs(x="Sepal Length", y="Sepal Width", title = "Iris")

#Question 2
ggplot(data = iris) +
  geom_point(mapping = aes(x = Sepal.Length, y = Sepal.Width, col = Species)) +
  labs(x = "Sepal Length", y = "Sepal Width", col = "Species",
  title = "Iris") +
  scale_y_continuous(limits = c(3, 3.5))

#Question 3
ggplot(data = iris) +
  geom_point(mapping = aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  labs(x = "Sepal Length", y = "Petal Length", col = "Species",
       title = "Iris") +
  scale_y_log10() + scale_x_log10()

#Question 4
ggplot(data = iris) +
  geom_point(mapping = aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  labs(x = "Sepal Length", y = "Petal Length", col = "Species",
       title = "Iris") +
  scale_y_sqrt() + scale_x_sqrt()

#Question 5
ggplot(data = iris) +
  geom_point(mapping = aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  labs(x = "Sepal Length", y = "Petal Length", col = "Species",
       title = "Iris") +
  scale_y_continuous(breaks = seq(from = 1, to = 7, by = 0.25))

#Question 6
ggplot(data = iris) +
  geom_point(mapping = aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  labs(x = "Sepal Length", y = "Petal Length", col = "Species",
       title = "Iris") +
  scale_x_continuous(breaks = seq(from = 4.25, to = 8, by = 0.25))

#Question 7
ggplot(data = iris) +
  geom_point(mapping = aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  labs(x = "Sepal Length", y = "Petal Length", col = "Species",
       title = "Iris") +
  geom_hline(yintercept = 5) + geom_hline(yintercept = 2.5)
