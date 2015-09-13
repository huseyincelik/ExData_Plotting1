source("load_data.R")
consumptionData <- loadData()

png(filename = "plot4.png" , width = 480, height = 480, units = "px")

par(mar = c(5,5,2,2),mfcol = c(2,2))

#top left
plot(consumptionData$DateTime, consumptionData$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

#bottom left
plot(consumptionData$DateTime, consumptionData$Sub_metering_1, col = lines1,
     type="l",
     xlab="",
     ylab="Energy Sub Metering")
lines(consumptionData$DateTime, consumptionData$Sub_metering_2, col=lines2)
lines(consumptionData$DateTime, consumptionData$Sub_metering_3, col=lines3)
legend("topright",col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

#top right
plot(consumptionData$DateTime, consumptionData$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage")

#bottom right
plot(consumptionData$DateTime, consumptionData$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power")

# Close Graphical device
dev.off()