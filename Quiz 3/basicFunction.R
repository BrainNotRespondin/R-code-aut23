#################################################################################
#################################################################################
#################################################################################
## Complete the task below, source the script and submit the code hash number.
 


## Write the function described in the quiz question and make sure to call
## the function basic.
## NOTE that the function will be called by the script with its own input,
## so do not provide the data or call the function when generating the hash value.

basic <- function(x){
  return((-2*x^2)-1*x+1)
}


 
#################################################################################
###################### Do not edit the code below this line! ####################
 z<-c( 22.64,-50.53,45.22,-56.07,49.32,37.98,40.43,-44,96.72,88.71,-10,-86.78,5.36,13.22,-46.55,55.93,18.07,41.84,44.31,-67.11,7.24,91.84,-59.41,-36.34,67.18,14.71,77.92,-74.96,-90.8,52.95,-55.08,-94.69,9.85,-25.24,-41.03,-8.62,9.9,-30.38,-88.94,-36.16,-28.76,48.53,-59.97,58.82,85.29,-80.55,-41.74,-5.46,85.36,46.87 );hash<-sum(abs(diff(as.integer(sapply(strsplit(paste(unlist(lapply(z, basic)), collapse = ""),"")[[1]], charToRaw)))))%%1e6; 
print(paste("Provide the followning code hash value as your quiz question answer:", hash))
print(paste("Test input:", z[1]))
print("Test output")
print(basic(z[1]))

