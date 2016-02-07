setwd("~/ExData_Plotting1/")
source("load_data.R")

png(filename = "plot2.png", height = 480, width = 480, bg = "transparent")

plot(dataset$DateTime, dataset$Global_active_power, 
     ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")

dev.off()