edata = read.table("C:/Users/Edzai/Downloads/electricity/power.txt", header=T, sep=";", na.strings="?")
edata <- edata[edata$Date %in% c("1/2/2007","2/2/2007"),]
Time <-strptime(paste(edata$Date, edata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
edata <- cbind(Time, edata)
#Plot 2
plot(edata$Time, edata$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")