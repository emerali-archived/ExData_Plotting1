library(sqldf)

# download data if it isn't already in the working directory
dataset_zip <- "exdata_plotting1.zip"
dataset_file <- "household_power_consumption.txt"
if(!file.exists(dataset_file) | !file.exists(dataset_file)){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                destfile = dataset_zip,
                method = "curl")
  unzip(dataset_zip)
}

# read data, but ignore the dates we don't want
dataset <- read.csv.sql(dataset_file, sql = "SELECT * FROM file WHERE Date = '1/2/2007' OR Date = '2/2/2007';",
                        header = TRUE, sep = ";", eol = "\n",
                        colClasses = c(rep("character", 2), rep("numeric", 7)),
                        stringsAsFactors = FALSE)

# clean up the dataset (format dates and times)
dataset$Date <- strptime(paste(dataset$Date, dataset$Time), format = "%d/%m/%Y %H:%M:%S")
names(dataset)[names(dataset) == "Date"] <- "DateTime"
dataset <- dataset[, names(dataset) != "Time"]
