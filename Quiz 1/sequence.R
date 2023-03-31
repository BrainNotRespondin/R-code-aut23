#################################################################################
testCode<-function(z){###########################################################
#################################################################################
#################################################################################
## Complete the task below, source the script and submit the code hash number.
 


## Create a vector s containing the sequence that starts from
## 10 , increases in increments of 1 and finishes at 
## z (a variable)
  s <- seq(from=10, to=z, by=1)


 
#################################################################################
###################### Do not edit the code below this line! ####################
return(s)}; z<-c( 95,28,21,63,37,99,108,50,29,74,92,88,94,61,60,82,93,32,52,68,30,62,80,65,106,24,27,12,14,67,34,48,109,19,17,66,45,110,100,46,107,91,22,85,73,101,87,38,59,57 );hash<-sum(abs(diff(as.integer(sapply(strsplit(paste(unlist(lapply(z, testCode)), collapse = ""),"")[[1]], charToRaw)))))%%1e6; 
print(paste("Provide the followning code hash value as your quiz question answer:", hash))
print(paste("Test input:", z[1]))
print("Test output")
print(testCode(z[1]))


