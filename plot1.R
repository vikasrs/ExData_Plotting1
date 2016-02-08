#Load the data
source("loadData.R")
desiredData1 <- loadData()

png(filename = "plot1.png")

hist(as.numeric(desiredData1$Global_active_power)/1000,col='red', xlab = "Global Active Power (kilowatts)", main = "Globa Active Power" )

dev.off()

