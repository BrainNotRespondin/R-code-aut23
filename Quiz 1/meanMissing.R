#################################################################################
testCode<-function(x){###########################################################
#################################################################################
#################################################################################
## Complete the task below, source the script and submit the code hash number.
 


## Write the code to compute the mean of x, where x might
## contain missing values. Assign the result to y.
y <- mean(x, na.rm = TRUE)


 
#################################################################################
###################### Do not edit the code below this line! ####################
return(y)}; z<- list(c(NA,0.7,0.87,0.12,0.14),c(0.05,0.37,0.74,0.63,NA),c(NA,0.9,0.34,0.11,0.07),c(0.52,0.35,0.95,NA,0.41),c(0.93,0.43,NA,0,0.1),c(0.95,NA,0.27,0.89,0.9),c(NA,0.64,0.78,0.62,0.35),c(0.61,NA,0.59,0.78,0.29),c(0.05,NA,0.04,0.88,0.99),c(0.2,0.55,NA,0.06,0.94),c(0.91,0.8,0.63,0.82,NA),c(0.28,NA,0.87,0.35,0.21),c(NA,0.12,0.34,0.55,0.1),c(0.52,0.78,NA,0.93,0.14),c(NA,0.14,0.69,0.93,0.77),c(0.41,0.54,0.56,NA,0.66),c(0.36,0,0.13,NA,0.25),c(NA,0.06,0.7,0.14,0.44),c(0.41,NA,0.19,0.68,0.83),c(0.35,0.95,0.12,NA,0.82),c(NA,0.95,0.62,0.54,0.86),c(0.95,0.73,0.42,NA,0.58),c(0.28,0.17,0.11,NA,0.11),c(0.57,0.61,0.53,0.54,NA),c(0.49,0.97,0.11,0.58,NA),c(0.74,0.71,0.07,0.4,NA),c(NA,0.13,0.04,0.77,0.89),c(NA,0.06,0.57,0.94,0.51),c(NA,0.67,0.29,0.17,0.39),c(NA,0.8,0.47,0.24,0.87),c(0.94,0.53,NA,0.99,0.52),c(0.08,NA,0.97,0.18,0.23),c(0.92,NA,0.71,0.87,0.59),c(0.27,0.77,0.11,0.1,NA),c(0.73,NA,0.62,0.12,0),c(NA,0.06,0.04,0.6,0.92),c(0.92,0.62,0.02,0.24,NA),c(0.49,0.13,0.02,0.94,NA),c(0.21,0.16,0.64,0.48,NA),c(0.2,NA,0.67,0.32,0.65),c(NA,0.9,0.17,0.83,0.71),c(NA,0.9,0.83,0.23,0.64),c(NA,0.68,0.26,0.14,0.62),c(0.19,0.04,0.79,0.85,NA),c(0.94,0.57,NA,0.24,0.77),c(0.55,0.46,0.27,0.13,NA),c(NA,0.04,0.35,0.72,0.71),c(0.65,NA,0.94,0.9,0.75),c(0.23,0.42,0.67,NA,0.48),c(NA,0.33,0.98,0.38,0.01)) ;hash<-sum(abs(diff(as.integer(sapply(strsplit(paste(unlist(lapply(z, testCode)), collapse = ""),"")[[1]], charToRaw)))))%%1e6; 
print(paste("Provide the followning code hash value as your quiz question answer:", hash))
print(paste("Test input:", paste(z[[1]], collapse = ",")))
print("Test output")
print(testCode(z[[1]]))

