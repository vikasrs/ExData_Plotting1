#Load the data
source("loadData.R")
twoDayData <- loadData()

png(filename = "plot3.png")

plot(twoDayData$Date,twoDayData$Sub_metering_1, type="l",ylab="Energy sub metering",xlab="")
lines(twoDayData$Date,twoDayData$Sub_metering_2, type="l", col="red")
lines(twoDayData$Date,twoDayData$Sub_metering_3, type="l", col="blue")
legend("topright", legend=names(twoDayData[7:9]), lty=1, col=c("black","red","blue"))

dev.off()