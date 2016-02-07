setwd("~/ExData_Plotting1/")
source("load_data.R")

png(filename = "plot1.png", height = 480, width = 480, bg = "transparent")

hist(dataset$Global_active_power, 
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     col = "red")

dev.off()