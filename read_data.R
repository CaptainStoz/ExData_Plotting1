#function reads in file household_power_consumption.txt from the local wd and formats it for use in the various plots

read_data <- function() {

power <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", strip.white = TRUE) #reads in the file
power[,1] <- as.Date(power[,1], "%d/%m/%Y")															  #formats the first column as date in the stock format
data <- filter(power, Date == "2007-02-01" | Date == "2007-02-02")									  #filters the two days in question
data$DateTime <- paste(data$Date, data$Time)														  #combines data and time
data$DateTime <- strptime(data$DateTime, "%Y-%m-%d %H:%M:%S")										  #formats data and time together
}
