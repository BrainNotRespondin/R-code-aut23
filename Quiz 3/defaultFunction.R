#################################################################################
#################################################################################
#################################################################################
## Complete the task below, source the script and submit the code hash number.
 


## Write the function described in the quiz question and make sure to call
## the function default.
## NOTE that the function will be called by the script with its own input,
## so do not provide the data or call the function when generating the hash value.

# insert function called default here.
default <- function(x, y = FALSE) {
  if (y) {
    return(1*x + 4)
  } else {
    return(1)
  }
}

 
#################################################################################
###################### Do not edit the code below this line! ####################
 x<-c( -46.64,17.22,39.7,45.02,55.84,10.82,84.95,87.79,83.04,-85.35,-63.06,21.97,-5.53,51.98,90.36,-1.26,92.18,-49.53,-49.15,94.46,-54.11,66.14,9.66,71.02,-92.17,-74.95,-37.7,-35.86,54.37,-95.34,29.69,26.31,48.47,-91.93,-99.55,-94.53,57.94,42.47,-76.16,-88.33,56.78,-34.23,-70.07,28.68,-80.41,-7.83,-88.49,53.19,60.31,-60.06 );y<-c( FALSE,TRUE,TRUE,TRUE,NA,NA,TRUE,TRUE,TRUE,NA,TRUE,TRUE,NA,TRUE,NA,FALSE,FALSE,NA,NA,TRUE,TRUE,NA,NA,NA,NA,NA,FALSE,NA,FALSE,FALSE,FALSE,NA,FALSE,NA,TRUE,TRUE,NA,NA,FALSE,NA,FALSE,FALSE,FALSE,FALSE,TRUE,NA,TRUE,TRUE,NA,FALSE );argsList<-function(x, y){if(is.na(y)){return(list(x = x))};return(list(x = x, y = y))};ldf<-mapply(argsList,x,y,SIMPLIFY=FALSE);hash<-sum(abs(diff(as.integer(sapply(strsplit(paste(unlist(sapply(ldf,do.call,what=default)), collapse = ""),"")[[1]], charToRaw)))))%%1e6; 
print(paste("Provide the followning code hash value as your quiz question answer:", hash))
print(paste("Test input:", ldf[[1]]))
print("Test output")
print(do.call(default, ldf[[1]]))

