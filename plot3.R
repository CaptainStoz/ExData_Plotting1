read_data()									#reads in data and formats

png(filename = "plot3.png", width = 480, height = 480, units = "px")

plot(data$DateTime, 							#creates 3rd plot
	 data$Sub_metering_1, 
	 type="l", 
	 ylab="Energy sub metering", 
	 xlab="")
    lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
    lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
    legend("topright",  c(colnames(data)[7:9]), col=c("black", "red", "blue"), lty=1, bty="o")
dev.off()