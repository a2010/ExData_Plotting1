household_power_consumption <- read.csv("C:/Users/sridhap/Desktop/R - Assignment 3/household_power_consumption.txt", sep=";")
View(household_power_consumption)
subSetData <- household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

