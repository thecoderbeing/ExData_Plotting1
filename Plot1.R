#plot1
png(file="Plot1.png")
hist(epowerconsumption$Global_active_power,xlab = "Global Active Power (killowatts)",main="Global Active Power",col="red")
dev.off()