epowerconsumption<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = c("?"))
epowerconsumption$Date<-as.Date(epowerconsumption$Date,format="%d/%m/%Y")
epowerconsumption<-subset(epowerconsumption,Date >="2007-2-1" & Date<="2007-2-2")
epowerconsumption$Time<-strptime(paste(as.character(epowerconsumption$Date)," ",epowerconsumption$Time,sep=""),format="%Y-%m-%d %H:%M:%S")

#plot4
png(file="Plot4.png",width = 480,height = 480)
par(mfrow=c(2,2),mar=c(4,4,2,2),oma = c(2, 2, 0, 0))
with(epowerconsumption,{
        plot(Time,Global_active_power,type="l",xlab="",ylab="Global Active Power")
        plot(Time,Voltage,type="l",xlab="datetime",ylab="Voltage")
        plot(Time,Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
        points(Time,Sub_metering_2,type="l",col="red")
        points(Time,Sub_metering_3,type="l",col="blue")
        legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n",lwd = 1, cex = 0.9)
        plot(Time,Global_reactive_power,type="l",xlab="datetime")
})
dev.off()