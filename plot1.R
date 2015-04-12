## This code is used for creating the plot1 in the Course Project 1 for the Exploratoy
## Data Analysis curse from Coursera

## The downloaded file with the information has been manually cut with days 1st and 2nd
## Of Febrary 2007 in the local file "1st_2nd_Feb2007.txt"

datafile <- "./data/1st_2nd_Feb2007.txt"
data <- read.table(datafile, sep = ";", header = T, na.strings = "?")

## Converting the date and time columns and merging in one
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")


## Constructing the plot in the screen
hist(data$Global_active_power, main = "Global Active Power", ylab = "Frequency", 
     xlab = "Global Active Power (kilowatts)", col = "red", breaks = 13, 
     ylim = c(0, 1200), xlim = c(0, 6), xaxp = c(0, 6, 3))

## Copying the plot in the PNG file
dev.copy(png, file = "plot1.png")
dev.off()
