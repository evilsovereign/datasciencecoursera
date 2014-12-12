complete <- function(directory, id = 1:332) {
        files_list <- list.files(directory, full.names = TRUE)
        nobs <- numeric()
        for(i in id) {
                nobs <- c(nobs, sum(complete.cases(read.csv(files_list[i]))))
        }
        id <- id        
        data_frame <- data.frame(cbind(id, nobs))
        print(data_frame)
}