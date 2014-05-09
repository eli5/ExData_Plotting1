#Plot1.R
png(filename="Plot1.png", width=480, height=480)
hist(df$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()