#Plot3.R
png(filename="Plot3.png", width=480, height=480)
plot(as_date,df$Sub_metering_1, ylab="Energy sub metering", xlab="", main="", type="l")
lines(as_date,df$Sub_metering_2, col="red")
lines(as_date,df$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", 
                            "Sub_metering_2", "Sub_metering_3"), pch=c(NA), 
       lwd=c(1,1,1), col=c("black","red","blue"))
dev.off()