## This code is for the first  Course Project of the Exploratory Data Analysis
##

if (!file.exists("./data/household_power_consumption.txt")) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "./data/power_data.zip", method = "curl")
  unzip("./data/power_data.zip", overwrite = T, exdir = "./data")
}



## I have manually take only the two days 2007-02-01 and 2007-02-02 measurements
## And put it on a new file named "1st_2nd_Feb2007.txt"