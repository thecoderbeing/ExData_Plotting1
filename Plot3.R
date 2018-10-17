#plot3
png(file="Plot3.png")
plot(epowerconsumption$Time,epowerconsumption$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
points(epowerconsumption$Time,epowerconsumption$Sub_metering_2,type="l",col="red")
points(epowerconsumption$Time,epowerconsumption$Sub_metering_3,type="l",col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()