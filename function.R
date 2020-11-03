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
    if (length(tempcsv[, column])<50 && forcecalc = FALSE)
    {
      return("One of the files has a column with less than the recommended 50 observations")
    }
    else
    {
    covar = cv(tempcsv[,column])
    finalVec[i] <- covar
    }
  }
  return(finalVec)
}
