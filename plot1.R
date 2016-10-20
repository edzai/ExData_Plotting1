edata = read.table("C:/Users/Edzai/Downloads/electricity/power.txt", header=T, sep=";", na.strings="?")
edata <- edata[edata$Date %in% c("1/2/2007","2/2/2007"),]
Time <-strptime(paste(edata$Date, edata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
edata <- cbind(Time, edata)
#Plot 1
hist(edata$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
