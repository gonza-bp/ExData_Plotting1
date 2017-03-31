Sys.setlocale("LC_ALL","English")
data<-read.table("../household_power_consumption.txt",sep=";",dec=".",header=TRUE,stringsAsFactors = FALSE)
#Concatenation of Data and Time variables
dateTime<-paste(data$Date,data$Time,sep=" ")
#Converting string columns in numeric columns
data[, 3:9] <- lapply(data[, 3:9], as.numeric)
#Converting Data and Time in objects of classes POSIX
data$TimeStamp<-strptime(dateTime,format="%d/%m/%Y %H:%M:%S")


selectedData<-data[data$TimeStamp>=strptime("2007-02-01",format="%Y-%m-%d") & data$TimeStamp<=strptime("2007-02-02 23:59:59",format="%Y-%m-%d %H:%M:%S"),]
