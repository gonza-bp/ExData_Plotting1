selectedData<-read.csv("selectedData.csv")
png(filename= "plot2.png",width=480, height=480)

plot(selectedData$TimeStamp,selectedData$Global_active_power,xlab="",ylab= "Global Active Power (kilowatts)",type="l")
dev.off()


