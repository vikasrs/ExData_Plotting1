#Load the data
source("loadData.R")
twoDayData <- loadData()

png(filename = "plot4.png")

par(mfcol=c(2,2))

plot(twoDayData$Date, twoDayData$Global_active_power, type="l",ylab="Global Active Power",xlab="")

plot(twoDayData$Date,twoDayData$Sub_metering_1, type="l",xlab="",ylab="Energy sub metering")
lines(twoDayData$Date,twoDayData$Sub_metering_2, type="l", col="red")
lines(twoDayData$Date,twoDayData$Sub_metering_3, type="l", col="blue")
legend("topright", legend=names(twoDayData[7:9]), lty=1, col=c("black","red","blue"))

plot(twoDayData$Date,twoDayData$Voltage, type="l",ylab="Voltage",xlab="datetime")

plot(twoDayData$Date,twoDayData$Global_reactive_power, type="l",ylab="Global_reactive_power",xlab="datetime")

dev.off()