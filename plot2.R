plot2 <- function() {
    dev.off()
    startRow <- 66637
    endRow <- 69517
    
    data1 <- read.csv("./household_power_consumption.txt", header=TRUE, na.strings = "?", sep=';', nrows=(endRow))    
    data1 <- data1[(startRow):(endRow-1),]
    data1$Full_Date <- strptime(paste(data1$Date, sep=' ', data1$Time), '%d/%m/%Y %H:%M:%S')
    
    plot(data1$Full_Date, data1$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
    
    dev.copy(png, width=480, height=480, file="plot2.png")
    dev.off()
}
