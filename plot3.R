source("load_data.R")
consumptionData <- loadData()

lines1 <- "black"
lines2 <- "red"
lines3 <- "blue"

title <- "Global Active Power"
xLabel <- ""
yLabel <- "Energy sub metering"

png(filename = "plot3.png" , width = 480, height = 480, units = "px")

par(mar = c(8,8,7,6))

plot(consumptionData$DateTime, consumptionData$Sub_metering_1, col = lines1,
     type="l",
     xlab=xLabel,
     ylab=yLabel)

lines(consumptionData$DateTime, consumptionData$Sub_metering_2, col=lines2)
lines(consumptionData$DateTime, consumptionData$Sub_metering_3, col=lines3)
legend("topright",col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

dev.off()