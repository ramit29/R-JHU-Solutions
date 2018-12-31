complete <- function(directory,id = 1:332){
  mons <- vector()
  calues <- vector()
  getname <-function(n){
    files <- sprintf("%03d.csv",n)
    path <- paste(directory,files,sep="/")
    
  }
  for(i in id){
    data <- read.csv(getname(i))
    a <- sum(!is.na(data$nitrate))
    b <- sum(!is.na(data$sulfate))
    c <- a+b
    mons <- c(mons,i)
    calues <- c(calues,b)
    
    
  }
  data.frame(id=mons,nobs=calues)
}