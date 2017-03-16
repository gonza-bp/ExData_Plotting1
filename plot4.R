selectedData<-read.csv("selectedData.csv")
#png(filename= "plot3.png",width=480, height=480)
par(mfrow=c(2,2))
plot(selectedData$TimeStamp,selectedData$Global_active_power,xlab="",ylab= "Global Active Power (kilowatts)",type="l")

source("plot1.R")
source("plot2.R")
source("plot3.R")

#dev.off()


