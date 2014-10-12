read_data()									    #calls up the filtered and formatted data
hist(data$Global_active_power, 					#creates 1st plot
	 main="Global Active Power",
	 xlab="Global Active Power (kilowatts)", 
	 ylab="Frequency", col="Red") 	
dev.copy(png,'plot1.png')						#outputs the plot as a 480x480 png file to the wd
dev.off()