

        ##Get data from text file
        
        house_data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.string = "?")
        house_data <- subset(house_data, as.Date(house_data$Date, "%d/%m/%Y") < as.Date("2007-02-03"))
        house_data <- subset(house_data, as.Date(house_data$Date, "%d/%m/%Y") >= as.Date("2007-02-01"))
       
        
        ## Draw histogram in PNG file
        png(filename = "plot1.png", width = 480, height = 480)
        hist(house_data$Global_active_power, xlab = "Global active power(kilowatts)", col = "red", main = "Global active Power")
        dev.off()

