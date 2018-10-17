#plot4
png(file="Plot4.png")
par(mfrow=c(2,2),mar=c(4,4,2,2),oma = c(2, 2, 0, 0))
with(epowerconsumption,{
        plot(Time,Global_active_power,type="l",xlab="",ylab="Global Active Power")
        plot(Time,Voltage,type="l",xlab="datetime",ylab="Voltage")
        plot(Time,Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
        points(Time,Sub_metering_2,type="l",col="red")
        points(Time,Sub_metering_3,type="l",col="blue")
        legend("topright",lty=c(1,1,1),col=c("black","red","blue"),cex=0.7,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        plot(Time,Global_reactive_power,type="l",xlab="datetime")
})
dev.off()