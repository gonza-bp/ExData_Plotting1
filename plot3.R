png(filename= "plot3.png",width=480, height=480)

plot(selectedData$TimeStamp,selectedData$Sub_metering_1,ylab= "Energy sub metering",xlab="",type="l")
lines(selectedData$TimeStamp,selectedData$Sub_metering_2,col="red")
lines(selectedData$TimeStamp,selectedData$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(2.5,2.5),col=c("black","red","blue"))
dev.off()


