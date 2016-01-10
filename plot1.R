plot1 <- function() {
    startRow <- 66637
    endRow <- 69517
    
    data1 <- read.csv("./household_power_consumption.txt", header=TRUE, na.strings = "?", sep=';', nrows=(endRow))    
    data1 <- data1[(startRow):(endRow-1),]
    
    dev.off()
    hist(data1[,3], col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
    dev.copy(png, width=480, height=480, file="plot1.png")
    dev.off()
}
