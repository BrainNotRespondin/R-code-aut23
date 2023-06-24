# q1
mtcars1 <- mtcars %>% filter(cyl < 6)

# q2
mtcars2 <- mtcars %>% filter(am == 0)

# q3
mtcars3 <- mtcars %>% filter(hp < 100)

# q4
mtcars4 <- mtcars %>% filter((drat > 3) & (drat < 4))

# q5
mtcars5 <- mtcars %>% filter((vs == 0) & (cyl < 6))

# q6
mtcars6 <- mtcars %>% filter((am == 0) & (gear > 3))

# q7
mtcars7 <- mtcars %>% filter((hp < 100) | (hp > 200))

# q8
mtcars8 <- mtcars %>% filter(((mpg > 20) & (cyl == 6)) | ((mpg > 30) & (cyl == 4)))

# q9
mtcars9 <- mtcars %>% filter(hp/cyl > 30)