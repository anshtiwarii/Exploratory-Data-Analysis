setwd("C:/Users/MAHE/Desktop/Exploratory/Ansh")
gepow <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
pow_filtered<-subset(pow, Date %in% c("1/2/2007","2/2/2007"))
pow_filtered$Date <- as.Date(pow_filtered$Date)
hist(pow_filtered$Global_active_power,col="Red", xlab="Global Active Power (kilowatts)", ylab="Frequency",main="Global Active Power")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

