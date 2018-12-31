corr <- function(directory,threshold=0){
  all <- complete(directory,1:332)
  thresh <-subset(all, nobs > threshold)
  getname <-function(n){
    files <- sprintf("%03d.csv",n)
    path <- paste(directory,files,sep="/")
  }
correlations <- vector()
  for (i in thresh$id){
    data <- read.csv(getname(i))
    completeCases <- data[complete.cases(data),]
    count <- nrow(completeCases)
    if( count >= threshold ) {
      correlations <- c(correlations, cor(completeCases$nitrate, completeCases$sulfate) )
    }
    
  }
  correlations
}