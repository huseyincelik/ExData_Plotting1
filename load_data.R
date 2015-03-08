#Loads and formats data
loadData <- function() {
    library(data.table)
    
    fileName    <- "household_power_consumption.txt"
    # prepare column class vector
    classes<- rep("character",9)
    
    consData <- fread(fileName, header=TRUE, sep=";", colClasses=classes,  na="?")
    
    # Format dates
    consData$Date <- as.Date(consData$Date, format="%d/%m/%Y")
    
    # Get data of two days
    consData <- consData[consData$Date == "2007-02-01" | consData$Date == "2007-02-02"]
    consData <- data.frame(consData)
    
    for(col in c(3:9)) {
        consData[,col] <- as.numeric(consData[,col])
    }
    
    # Format DateTime
    consData$DateTime <- paste(consData$Date, consData$Time)
    consData$DateTime <- strptime(consData$DateTime, format = "%Y-%m-%d %H:%M:%S")
    
    consData
}