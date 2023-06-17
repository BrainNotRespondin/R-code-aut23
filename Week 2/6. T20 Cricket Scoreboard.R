totalOvers <- 20
oversCompleted <- 12
runs <- 92
target <- 152

runRate <- runs/oversCompleted
requiredRunRate <- (target-runs)/(totalOvers-oversCompleted)

cat("#############################
## Runs: ", runs, "##
## Overs Completed: ", oversCompleted, "##
## Run Rate: ", round(runRate, 2), "##
## Required Run Rate:", requiredRunRate, "##
#############################")
