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