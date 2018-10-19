epowerconsumption<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = c("?"))
epowerconsumption$Date<-as.Date(epowerconsumption$Date,format="%d/%m/%Y")
epowerconsumption<-subset(epowerconsumption,Date >="2007-2-1" & Date<="2007-2-2")
epowerconsumption$Time<-strptime(paste(as.character(epowerconsumption$Date)," ",epowerconsumption$Time,sep=""),format="%Y-%m-%d %H:%M:%S")

#plot2
png(file="Plot2.png",width = 480,height = 480)
plot(epowerconsumption$Time,epowerconsumption$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (killowatts)")
dev.off()