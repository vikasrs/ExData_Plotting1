loadData <- function(){
  
powerConsumptionData <- read.table('household_power_consumption.txt',sep=";",header=TRUE)
twoDayData <- subset(powerConsumptionData,subset=(Date=='1/2/2007' | Date=='2/2/2007'))
twoDayData$Date <- strptime(paste(twoDayData$Date,twoDayData$Time), "%d/%m/%Y %H:%M:%S")

return (desiredData)
}