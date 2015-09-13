source("load_data.R")
consumptionData <- loadData()

columnColor     <- "red"
title         <- "Global Active Power"
xLabel        <- "Global Active Power(kilowatts)"

png(filename = "plot1.png" , width = 480, height = 480, units = "px")

par(mar = c(8,8,7,6))

hist(consumptionData$Global_active_power, col = columnColor, main = title, xlab = xLabel)

dev.off()