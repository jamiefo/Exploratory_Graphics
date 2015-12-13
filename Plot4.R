# Set our working direction - (remember to use / slash in "quotes")
setwd("C:/Users/uszlj8j/Desktop/Learning R/Data Science CourseRA/R_Graphics")
getwd()
mydata <- read.table("C:/Users/uszlj8j/Desktop/Learning R/Data Science CourseRA/R_Graphics/household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
View(mydata)

###################  PLOT-4 ##############################

png("plot4.png", width=480, height=480)
par(mfrow = c(2,2))
with(mydata2,{
  plot(y = mydata2$Global_active_power, x = mydata2$DataTime,
       type = "l",
       ylab = "Global Active Power (kilowatts)",
       xlab = ""
  )
  
  plot(x = mydata2$DataTime, y= mydata2$Voltage,
       type = "l",
       ylab = "Voltage",
       xlab = "datetime")
  
  plot(x = mydata2$DataTime, y= mydata2$Sub_metering_1,
       type = "l",
       ylab = "Energy Sub metering",
       xlab = "")
  lines(x = mydata2$DataTime, y= mydata2$Sub_metering_2, type = "l", col= "red")
  lines(x = mydata2$DataTime, y= mydata2$Sub_metering_3, type = "l", col= "blue")
  legend("topright", lty=1,, col = c("blue", "red", "black"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  
  plot(x = mydata2$DataTime, y= mydata2$Global_reactive_power,
       type = "l",
       ylab = "Global_reactive_power",
       xlab = "datetime")
  
})
dev.off()
