## This code is used for creating the plot3 in the Course Project 1 for the Exploratoy
## Data Analysis curse from Coursera

## The downloaded file with the information has been manually cut with days 1st and 2nd
## Of Febrary 2007 in the local file "1st_2nd_Feb2007.txt"

datafile <- "./data/1st_2nd_Feb2007.txt"
data <- read.table(datafile, sep = ";", header = T, na.strings = "?")

## Converting the date and time columns and merging in one
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")


## Constructing the plot in the screen
plot(data$Datetime, data$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering")

points(data$Datetime, data$Sub_metering_2, type = "l", xlab = "", 
       ylab = "Energy sub metering", col = "red")

points(data$Datetime, data$Sub_metering_3, type = "l", xlab = "", 
       ylab = "Energy sub metering", col = "blue")

legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Copying the plot in the PNG file
dev.copy(png, file = "plot3.png")
dev.off()