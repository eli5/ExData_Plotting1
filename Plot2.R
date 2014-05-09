#Plot2.R
png(filename="Plot2.png", width=480, height=480)
plot(as_date,df$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", main="", type="l")
dev.off()