# Set our working direction - (remember to use / slash in "quotes")
setwd("C:/Users/uszlj8j/Desktop/Learning R/Data Science CourseRA/R_Graphics")
getwd()
mydata <- read.table("C:/Users/uszlj8j/Desktop/Learning R/Data Science CourseRA/R_Graphics/household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
View(mydata)

###################  PLOT-3 ##############################

View(mydata2)
png("plot3.png", width=480, height=480)
plot3 <- plot(x = mydata2$DataTime, y= mydata2$Sub_metering_1,
              type = "l",
              ylab = "Energy Sub metering",
              xlab = "")
lines(x = mydata2$DataTime, y= mydata2$Sub_metering_2, type = "l", col= "red")
lines(x = mydata2$DataTime, y= mydata2$Sub_metering_3, type = "l", col= "blue")
legend("topright", lty=1,, col = c("blue", "red", "black"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()