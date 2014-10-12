read_data()						#reads in and formats file

png(filename = "plot4.png", width = 480, height = 480, units = "px")

par(mfrow=c(2,2))

plot(data$DateTime,data$Global_active_power,
	type='l',
	ylab="Global Active Power",
	xlab="")

plot(data$DateTime, data$Voltage,
	 type='l',
	 xlab="datetime", 
	 ylab="Voltage")

plot(data$DateTime, 							
	 data$Sub_metering_1, 
	 type="l", 
	 ylab="Energy sub metering", 
	 xlab="")
    lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
    lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
    legend("topright",  c(colnames(data)[7:9]), col=c("black", "red", "blue"), lty=1, bty="n")

plot(data$DateTime,data$Global_reactive_power,
	 type='l',
	 xlab="datetime",
	 ylab="Global_reactive_power")

dev.off()