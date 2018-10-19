epowerconsumption<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = c("?"))
epowerconsumption$Date<-as.Date(epowerconsumption$Date,format="%d/%m/%Y")
epowerconsumption<-subset(epowerconsumption,Date >="2007-2-1" & Date<="2007-2-2")
epowerconsumption$Time<-strptime(paste(as.character(epowerconsumption$Date)," ",epowerconsumption$Time,sep=""),format="%Y-%m-%d %H:%M:%S")

#plot3
png(file="Plot3.png",width = 480,height = 480)
plot(epowerconsumption$Time,epowerconsumption$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
points(epowerconsumption$Time,epowerconsumption$Sub_metering_2,type="l",col="red")
points(epowerconsumption$Time,epowerconsumption$Sub_metering_3,type="l",col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()