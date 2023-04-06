#################################################################################
testCode<-function(n){###########################################################
#################################################################################
#################################################################################
## Complete the task below, source the script and submit the code hash number.
 


## Write the code to compute the sequence provided in the quiz question.
## The sequence should be length n and assigned to y.
## NOTE that n will be provided by the script, so do not provide a value for n
## when generating the hash value.

# insert code below here
y <- rep(0, n) # create an empty vector to store the sequence.
# write the for loop to create the sequence and store it in y.


 
#################################################################################
###################### Do not edit the code below this line! ####################
return(y)}; z<-c( 57,57,58,45,41,68,87,71,52,70,62,38,12,25,86,11,89,99,40,17,92,54,28,39,70,81,96,10,17,44,13,24,40,86,13,75,73,63,71,67,78,88,83,64,35,56,52,11,22,94 );options(scipen = 999);hash<-sum(abs(diff(as.integer(sapply(strsplit(paste(unlist(lapply(z, testCode)), collapse = ""),"")[[1]], charToRaw)))))%%1e6; 
print(paste("Provide the followning code hash value as your quiz question answer:", hash))
print(paste("Test input:", z[1]))
print("Test output")
print(testCode(z[1]))

