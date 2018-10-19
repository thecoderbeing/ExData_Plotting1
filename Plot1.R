epowerconsumption<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = c("?"))
epowerconsumption$Date<-as.Date(epowerconsumption$Date,format="%d/%m/%Y")
epowerconsumption<-subset(epowerconsumption,Date >="2007-2-1" & Date<="2007-2-2")
epowerconsumption$Time<-strptime(paste(as.character(epowerconsumption$Date)," ",epowerconsumption$Time,sep=""),format="%Y-%m-%d %H:%M:%S")

#plot1
png(file="Plot1.png",width = 480,height = 480)
hist(epowerconsumption$Global_active_power,xlab = "Global Active Power (killowatts)",main="Global Active Power",col="red")
dev.off()