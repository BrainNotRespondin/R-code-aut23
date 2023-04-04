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

aggregate(marks - subject, d, mean)
subjectSet <- unique(d$subject)
subjectMean <- rep(0, length(subjectSet))

for (i in 1:length(subjectSet)) {
  pos <- which(d$subject == subjectSet[i])
  subjectMean[i] <- mean(d$marks[pos])
}

data.frame( subject = subjectSet, mark = subjectMean)
