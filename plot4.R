setwd("~/ExData_Plotting1/")
source("load_data.R")

png(filename = "plot4.png", height = 480, width = 480, bg = "transparent")
par(mfcol = c(2,2))

# Top left plot
plot(dataset$DateTime, dataset$Global_active_power, 
     ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")


# Bottom left plot
plot(dataset$DateTime, dataset$Sub_metering_1, 
     ylab = "Energy sub metering", xlab = "", type = "l")

lines(dataset$DateTime, dataset$Sub_metering_2, col = "red", type = "l")
lines(dataset$DateTime, dataset$Sub_metering_3, col = "blue", type = "l")

legend("topright", lwd = 1, bty = "n",
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


# Top right plot
plot(dataset$DateTime, dataset$Voltage,
     ylab = "Voltage", xlab = "datetime", 
     type = "l", col = "black")


# Bottom right plot
plot(dataset$DateTime, dataset$Global_reactive_power,
     ylab = "Global_reactive_power", xlab = "datetime", 
     type = "l", col = "black")

dev.off()