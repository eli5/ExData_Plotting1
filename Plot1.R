initial <- read.table(file="household_power_consumption.txt", header=TRUE,na.strings="?",sep=";", nrows = 100)
classes <- sapply(initial, class)
data <- read.table(file="household_power_consumption.txt", header=TRUE,na.strings="?",sep=";", colClasses = classes)

data$Date <- as.Date(strptime(data$Date, "%d/%m/%Y") )
df <- rbind(subset(data, data$Date == "2007-02-01"),subset(data, data$Date == "2007-02-02"))

date <- paste(df$Date, df$Time); as_date  <- strptime(date, "%Y-%m-%d %H:%M:%S") 

#Plot1.R
png(filename="Plot1.png", width=480, height=480)
hist(df$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
