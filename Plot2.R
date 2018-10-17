#plot2
png(file="Plot2.png")
plot(epowerconsumption$Time,epowerconsumption$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (killowatts)")
dev.off()