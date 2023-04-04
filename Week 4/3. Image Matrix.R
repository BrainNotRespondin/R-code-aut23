n <- 100
a_matrix <- matrix(0, n ,n)

for (i in seq_len(nrow(a_matrix))){
  for (j in seq_len(ncol(a_matrix))){
    a_matrix[i,j] <- i^2 + j^2
  }
}
image(a_matrix)
