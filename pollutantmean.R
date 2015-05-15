pollutantmean <- function(directory, pollutant, id) 
  {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  allfiles <- list.files(path = directory)
  selectfiles <- allfiles[id]
  dataset <- sapply(paste(directory,"/",selectfiles, sep=""), read.csv, header=TRUE)
  this <- unlist(dataset[pollutant,], use.names = FALSE)
  mean(this, na.rm=TRUE)
 
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
  }
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)