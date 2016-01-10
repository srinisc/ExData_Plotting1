plot3 <- function() {
    dev.off()
    startRow <- 66637
    endRow <- 69517
    
    data1 <- read.csv("./household_power_consumption.txt", header=TRUE, na.strings = "?", sep=';', nrows=(endRow))    
    data1 <- data1[(startRow):(endRow-1),]
    data1$Full_Date <- strptime(paste(data1$Date, sep=' ', data1$Time), '%d/%m/%Y %H:%M:%S')
    
    with(data1, plot(data1$Full_Date, data1$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l"))
    with(data1, points(data1$Full_Date, data1$Sub_metering_2, col="red", type="l"))
    with(data1, points(data1$Full_Date, data1$Sub_metering_3, col="blue", type="l"))
    legend("topright", c("Sub_metering_1    ", "Sub_metering_2    ", "Sub_metering_3    "), col=c("black", "red", "blue"), lty=1)
    
    dev.copy(png, width=480, height=480, file="plot3.png")
    dev.off()
}
