#Load the data
source("loadData.R")
twoDayData <- loadData()

png(filename = "plot2.png")

plot(twoDayData$Date,twoDayData$Global_active_power, type="l",ylab="Global Active Power (kilowatts)",xlab="")

dev.off()
