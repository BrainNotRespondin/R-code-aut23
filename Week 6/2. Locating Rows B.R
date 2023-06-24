mtcars$model <- rownames(mtcars)
rownames(mtcars) <- c()
# 1
mtcars %>% filter(mpg == max(mpg)) %>% select(model)

# 2
mtcars %>% mutate(hp_per_cyl = hp/cyl) %>%
  filter(hp_per_cyl == max(hp_per_cyl)) %>%
  select(model)

# 3
mtcars %>% filter(cyl == 6) %>%
  filter(mpg == max(mpg)) %>%
  select(model)

# 4
mtcars %>% filter(cyl == 4) %>%
  summarise(sd(disp))

# 5
mtcars %>% filter(vs == 0) %>%
  summarise(mean(am == 0))

# 6
mtcars %>% filter(mpg > 25) %>%
  count(carb)

#7 We are getting to ggplot2 soon, so this remains the same as last week
hist(mtcars$drat)

# 8
mtcars %>% group_by(am) %>%
  count(vs)