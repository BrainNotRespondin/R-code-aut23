#################################################################################
testCode<-function(x){###########################################################
#################################################################################
#################################################################################
## Complete the task below, source the script and submit the code hash number.
 


## Write the code to compute the provided equation from the quiz question 
## using the variable x and assign the result to y.
y <- 2*x^2 + 3*x + 4


 
#################################################################################
###################### Do not edit the code below this line! ####################
return(y)}; z<-c( 10.72,-58.37,-85.56,16.02,-88.36,83.66,-46.17,71.31,49,29.2,-92.61,-7.52,-73.01,27.55,90.88,72.36,70.88,18,-30.88,-61.09,-18.1,-48.64,98.98,-70.33,-93.16,-68.01,54.96,-13.47,-48.25,-1.48,-43.31,-82.98,-76.72,26.38,66.56,-99.96,-50.12,23.56,52.08,-24.26,41.67,-5.9,39.34,84.43,-58.6,-54.44,29.22,28.14,-48.39,71.97 );hash<-sum(abs(diff(as.integer(sapply(strsplit(paste(unlist(lapply(z, testCode)), collapse = ""),"")[[1]], charToRaw)))))%%1e6; 
print(paste("Provide the followning code hash value as your quiz question answer:", hash))
print(paste("Test input:", z[1]))
print("Test output")
print(testCode(z[1]))


