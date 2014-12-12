corr <- function(directory, threshold = 0) {
        files_list <- list.files(directory, full.names=TRUE) #creates a list of files
        correlate <- numeric(0)
        dat <- data.frame()
        nobs <- numeric()
        id <- 1:332
        for(i in id) {
                nobs <- c(nobs, sum(complete.cases(read.csv(files_list[i]))))
        }
        id <- id        
        data_frame <- data.frame(cbind(id, nobs))
        for (i in  1:332){
                if (data_frame$nobs[i] > threshold){
                        dat <- na.omit(read.csv(files_list[i]))
                        correlate<-c(correlate, cor(dat$sulfate,dat$nitrate, use="pairwise.complete.obs"))
                }
        }
        correlate
}