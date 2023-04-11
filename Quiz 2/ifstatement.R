#################################################################################
testCode<-function(x){###########################################################
#################################################################################
#################################################################################
## Complete the task below, source the script and submit the code hash number.
 


## Write the code to compute the provided equation from the quiz question 
## using the variable x and assign the result to y.
## NOTE that the variable x will be provided by the script, so do not provide the
## variable x when generating the hash value.

# insert code below here
y<-0
  if (x < 0){
    y <- (2*x^2)-(2*x)-4
  } else if (x>=0){
    y <- (4*x^2)-(4*x)+4 
  }

 
#################################################################################
###################### Do not edit the code below this line! ####################
return(y)}; z<-c( -78.26,29.76,-64.17,76.02,-69.72,55,31.4,-24.42,12.61,-15.97,34.03,52.85,-90.81,-14.96,78.63,-53.62,5.18,61.41,-62.51,33.19,-87.21,-8.97,2.56,35.86,79.28,-57.06,-98.23,84.64,-78.33,50.25,-1.44,-43.84,-55.12,-64.59,11.67,-52.32,-44.64,-37.65,36.03,-46.56,-19.64,78.92,-79.75,31.96,-59.1,-82.08,10.84,25.09,-68.87,-37.55 );hash<-sum(abs(diff(as.integer(sapply(strsplit(paste(unlist(lapply(z, testCode)), collapse = ""),"")[[1]], charToRaw)))))%%1e6; 
print(paste("Provide the followning code hash value as your quiz question answer:", hash))
print(paste("Test input:", z[1]))
print("Test output")
print(testCode(z[1]))

