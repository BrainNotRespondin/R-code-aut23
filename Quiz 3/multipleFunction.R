#################################################################################
#################################################################################
#################################################################################
## Complete the task below, source the script and submit the code hash number.
 


## Write the function described in the quiz question and make sure to call
## the function multiple.
## NOTE that the function will be called by the script with its own input,
## so do not provide the data or call the function when generating the hash value.

multiple <- function(x, y) {
  res <- c(2*x^2 - 5*x + 1, 1 - y)
  return(res)
}


 
#################################################################################
###################### Do not edit the code below this line! ####################
 x<-c( 28.58,-38.78,-72.64,5.97,53.75,-5.11,-69.16,90.48,-43.23,-68.58,5.07,-58.97,47.6,48.36,-80.69,72.99,-87.9,8.08,67.73,85.81,95.48,-89.86,-47.29,-33.87,97.68,-85.09,-40.07,52.79,-22.19,-41.66,82.43,16.02,-12.2,-57.51,-8.96,-20.35,-27.42,95.56,14.08,-54.84,26.05,55.19,-17.35,-52.98,34.81,-89.87,-41.76,89.62,35.11,-24.43 );y<-c( FALSE,TRUE,FALSE,TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,TRUE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,TRUE,TRUE,TRUE,FALSE,TRUE,FALSE,FALSE,TRUE,TRUE,FALSE );argsList<-function(x,y){if(is.na(y)){return(list(x = x))};return(list(x = x, y = y))};ldf<-mapply(argsList,x,y,SIMPLIFY=FALSE);hash<-sum(abs(diff(as.integer(sapply(strsplit(paste(unlist(c(sapply(ldf,do.call,what=multiple))), collapse = ""),"")[[1]], charToRaw)))))%%1e6; 
print(paste("Provide the followning code hash value as your quiz question answer:", hash))
print(paste("Test input:", ldf[[1]]))
print("Test output")
print(do.call(multiple, ldf[[1]]))

