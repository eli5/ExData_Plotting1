#Script for Project 1 Exploratory Data analysis

#English on plots
Sys.setlocale(category = "LC_TIME", locale = "C")
#My language on plots
Sys.setlocale(category = "LC_ALL", locale = "")


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
#Plot2.R
png(filename="Plot2.png", width=480, height=480)
     plot(as_date,df$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", main="", type="l")
dev.off()

#Plot3.R
png(filename="Plot3.png", width=480, height=480)
     plot(as_date,df$Sub_metering_1, ylab="Energy sub metering", xlab="", main="", type="l")
     lines(as_date,df$Sub_metering_2, col="red")
     lines(as_date,df$Sub_metering_3, col="blue")
     legend("topright", legend=c("Sub_metering_1", 
          "Sub_metering_2", "Sub_metering_3"), pch=c(NA), 
          lwd=c(1,1,1), col=c("black","red","blue"))
dev.off()


#Plot4.R
png(filename="Plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(as_date,df$Global_active_power, ylab="Global Active Power", xlab="", main="", type="l")
plot(as_date,df$Voltage, xlab="datetime", ylab="Voltage", main="", type="l")
plot(as_date,df$Sub_metering_1, ylab="Energy sub metering", xlab="", main="", type="l")
     lines(as_date,df$Sub_metering_2, col="red")
     lines(as_date,df$Sub_metering_3, col="blue")
     legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch=c(NA), 
            lwd=c(1,1,1), col=c("black","red","blue"), box.lwd = 0, cex=0.9)
plot(as_date,df$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", main="", type="l")
dev.off()


