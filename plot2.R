read_data()						#reads in the data and formats

png(filename = "plot2.png", width = 480, height = 480, units = "px")	
plot(data$DateTime, 
	 data$Global_active_power, 
	 type="l", 
	 xlab="", 
	 ylab="Global Active Power (kilowatts)")  #creates 2nd plot
dev.off()