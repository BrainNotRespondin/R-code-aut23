library("ggplot2")

#Question 1
ggplot(data = diamonds)+
  geom_point(mapping = aes(x=depth, y=price))

#Question 2
ggplot(data = diamonds)+
  geom_boxplot(mapping=aes(x=cut,y=price))

#Question 3
ggplot(data = diamonds)+
  geom_smooth(mapping=aes(x = carat, y = price))

#Question 4
ggplot(data = diamonds)+
  geom_bar(mapping=aes(x=carat))

#Question 5
ggplot(data = diamonds)+
  geom_bar(mapping=aes(x=color))+coord_flip()

#Question 6
ggplot(data=diamonds)+
  geom_point(mapping=aes(x=table,y=carat))+
  geom_smooth(mapping=aes(x=table,y=carat))
