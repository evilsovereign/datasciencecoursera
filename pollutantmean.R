pollutantmean <- function(directory, pollutant, id = 1:332) {
        files_list <- list.files(directory, full.names = TRUE)
        dat <- data.frame()
        for(i in id) {
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        if (pollutant == "sulfate") {
                round(mean(dat$sulfate, na.rm=T),3)
        } else {
                if (pollutant == "nitrate") {
                        round(mean(dat$nitrate, na.rm=T),3)
                }
        }
        
}