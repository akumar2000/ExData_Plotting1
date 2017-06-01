
        house_data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.string = "?")
        house_data <- subset(house_data, as.Date(house_data$Date, "%d/%m/%Y") < as.Date("2007-02-03"))
        house_data <- subset(house_data, as.Date(house_data$Date, "%d/%m/%Y") >= as.Date("2007-02-01"))

        dateTime <- strptime(paste(house_data$Date, house_data$Time,  sep = " "), "%d/%m/%Y %H:%M:%S")
        globalActivePower <- house_data$Global_active_power
        
        
        png(file = "plot2.png", width = 480, height = 480)
        
        plot(dateTime, globalActivePower, ylab = "Global active power(kilowatts)", type = "l")
        
        dev.off()
        
    
        