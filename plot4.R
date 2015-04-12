## This code is used for creating the plot4 in the Course Project 1 for the Exploratoy
## Data Analysis curse from Coursera

## The downloaded file with the information has been manually cut with days 1st and 2nd
## Of Febrary 2007 in the local file "1st_2nd_Feb2007.txt"

datafile <- "./data/1st_2nd_Feb2007.txt"
data <- read.table(datafile, sep = ";", header = T, na.strings = "?")

## Converting the date and time columns and merging in one
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")


## Constructing the plot in the screen

par(mfrow = c(2, 2))

# plot 4.1 (NW)
plot(data$Datetime, data$Global_active_power, type = "l", 
     ylab = "Global Active Power", xlab = "")

# plot 4.2 (NE)
plot(data$Datetime, data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

# plot 4.3 (SW)
plot(data$Datetime, data$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering", xlab = "", col = "black")
points(data$Datetime, data$Sub_metering_2, type = "l", xlab = "", 
       ylab = "Sub_metering_2", col = "red")
points(data$Datetime, data$Sub_metering_3, type = "l", xlab = "", 
       ylab = "Sub_metering_3", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", )

# plot 4.4 (SE)
plot(data$Datetime, data$Global_reactive_power, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power", ylim = c(0, 0.5))


## Copying the plot in the PNG file
dev.copy(png, file = "plot4.png")
dev.off()