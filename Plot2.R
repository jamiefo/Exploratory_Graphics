# Set our working direction 
setwd("C:/Users/uszlj8j/Desktop/Learning R/Data Science CourseRA/R_Graphics")
getwd()
mydata <- read.table("C:/Users/uszlj8j/Desktop/Learning R/Data Science CourseRA/R_Graphics/household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
View(mydata)

####Subset between 2 character Dates
mydata2 <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
mydata2$Global_active_power <- as.numeric(mydata2$Global_active_power)
head(mydata2)

###################  PLOT-2 ##############################

mydata2$DataTime <- strptime(paste(mydata2$Date, mydata2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
View(mydata2$DataTime)
View(mydata2)

png("plot2.png", width=480, height=480)
plot2 <- plot(y = mydata2$Global_active_power, x = mydata2$DataTime,
              type = "l",
              ylab = "Global Active Power (kilowatts)",
              xlab = ""
)
dev.off()


