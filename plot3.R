edata = read.table("C:/Users/Edzai/Downloads/electricity/power.txt", header=T, sep=";", na.strings="?")
edata <- edata[edata$Date %in% c("1/2/2007","2/2/2007"),]
Time <-strptime(paste(edata$Date, edata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
edata <- cbind(Time, edata)

#Plot 3
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(edata$Time, edata$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(edata$Time, edata$Sub_metering_2, col=columnlines[2])
lines(edata$Time, edata$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")