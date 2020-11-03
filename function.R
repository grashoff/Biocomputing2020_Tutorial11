coofvar <- function (direc, column, forcecalc = FALSE)
{
  setwd(dir = direc)
  fileNames <- list.files()
  numFiles <- length(fileNames)
  covar = 0
  finalVec <- rep (0, numFiles)
  for (i in 1:numFiles)
  {
    tempcsv <- read.csv(file = fileNames[i], header = FALSE)
    covar = cv(tempcsv[,column])
    finalVec[i] <- covar
  }
}