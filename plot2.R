setwd("C:/Users/MAHE/Desktop/Exploratory/Ansh")
pow <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')#reading data set into variable pow
pow_filtered<-subset(pow, Date %in% c("1/2/2007","2/2/2007"))
dt <- strptime(paste(pow_filtered$Date, pow_filtered$Time, sep=" ")) 
gpow <- as.numeric(pow_filtered$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dt, gpow, xlab="", ylab="Global Active Power (kilowatts)",type="l")
dev.off()

