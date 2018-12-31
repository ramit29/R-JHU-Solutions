polmean <- function(directory, pollutant, id = 1:332){
  polvalues <- vector()
  for(i in id){
    files <- sprintf("%03d.csv",i)
    path <- paste(directory,files,sep="/")
    data <- read.csv(path)
    d <- data[,pollutant]
    d <- d[!is.na(d)]
    polvalues <- c(polvalues,d)
    
  }
  
  mean(polvalues)
}

