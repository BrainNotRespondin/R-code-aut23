library("dplyr")

d <- data.frame(
  ID = c(580, 625, 630, 721, 700, 855, 740, 187, 571, 312),
  subject = c(
    "English",
    "English",
    "Science",
    "Science",
    "Maths",
    "English",
    "Science",
    "Science",
    "English",
    "Maths"
  ),
  marks = c(85, 69, 52, 76, 63, 58, 74, 66, 95, 77)
)

d

subjectMark <- d %>%
  group_by(subject) %>%
    summarise(mark = mean(marks))


subjectMark

