
        house_data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.string = "?")
        house_data <- subset(house_data, as.Date(house_data$Date, "%d/%m/%Y") < as.Date("2007-02-03"))
        house_data <- subset(house_data, as.Date(house_data$Date, "%d/%m/%Y") >= as.Date("2007-02-01"))

        dateTime <- strptime(paste(house_data$Date, house_data$Time,  sep = " "), "%d/%m/%Y %H:%M:%S")
        
        
        
        png(file = "plot4.png", width = 480, height = 480)
        
        par(mfrow = c(2,2))
        
        plot(dateTime, house_data$Global_active_power, ylab = "Global active power(kilowatts)", type = "l", cex=0.2)
        plot(dateTime, house_data$Voltage, ylab = "Voltage", type = "l" )

        plot(dateTime, house_data$Sub_metering_1, ylab = "Energy sub metering", col = "black", type = "l")
        lines(dateTime , house_data$Sub_metering_2, col = "red")
        lines(dateTime, house_data$Sub_metering_3, col = "blue" )
        legend("topright", col = c("black", "red", "blue"),lty = 1, lwd = 2.5,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),bty='o')
        
        plot(dateTime, house_data$Global_reactive_power, ylab = "Voltage", type = "l")
        
        dev.off()        
        

        