setwd("~/ExData_Plotting1/")
source("load_data.R")

png(filename = "plot3.png", height = 480, width = 480, bg = "transparent")

plot(dataset$DateTime, dataset$Sub_metering_1, 
     ylab = "Energy sub metering", xlab = "", type = "l")

lines(dataset$DateTime, dataset$Sub_metering_2, col = "red", type = "l")
lines(dataset$DateTime, dataset$Sub_metering_3, col = "blue", type = "l")

legend("topright", lwd = 1,
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()