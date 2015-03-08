source("load_data.R")
consumptionData <- loadData()

title <- "Global Active Power"
xLabel <- ""
yLabel <- "Global Active Power (kilowatts)"

png(filename = "plot2.png" , width = 480, height = 480, units = "px")

par(mar = c(8,8,7,6))

plot(consumptionData$DateTime, consumptionData$Global_active_power,
     type="l",
     xlab=xLabel,
     ylab=yLabel)

# Close Graphical device
dev.off()