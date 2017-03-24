png(filename= "plot4.png",width=480, height=480)
par(mfrow=c(2,2))
plot(selectedData$TimeStamp,selectedData$Global_active_power,xlab="",ylab= "Global Active Power (kilowatts)",type="l")

plot(selectedData$TimeStamp,selectedData$Voltage,xlab="datetime",ylab= "Voltage",type="l")

plot(selectedData$TimeStamp,selectedData$Sub_metering_1,ylab= "Energy sub metering",xlab="",type="l")
lines(selectedData$TimeStamp,selectedData$Sub_metering_2,col="red")
lines(selectedData$TimeStamp,selectedData$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(2.5,2.5),col=c("black","red","blue"))

plot(selectedData$TimeStamp,selectedData$Global_reactive_power,xlab="datetime",ylab= "Global_reactive_power",type="l")

dev.off()


