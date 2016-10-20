
edata = read.table("C:/Users/Edzai/Downloads/electricity/power.txt", header=T, sep=";", na.strings="?")
edata <- edata[edata$Date %in% c("1/2/2007","2/2/2007"),]
Time <-strptime(paste(edata$Date, edata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
edata <- cbind(Time, edata)

## Generating Plot 4
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
columnlines <- c("black","red","blue")
par(mfrow=c(2,2))
plot(edata$Time, edata$Global_active_power, type="l", col="green", xlab="", ylab="Global Active Power")
plot(edata$Time, edata$Voltage, type="l", col="orange", xlab="datetime", ylab="Voltage")
plot(edata$Time, edata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(edata$Time, edata$Sub_metering_2, type="l", col="red")
lines(edata$Time, edata$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines)
plot(edata$Time, edata$Global_reactive_power, type="l", col="blue", xlab="datetime", ylab="Global_reactive_power")

