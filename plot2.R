plot(df$`Date/Time`, df$Global_active_power, type = "l", lty = 1, xlab='', ylab='Global Active Power (kilowatts)')
dev.copy(png, file='plot2.png')
dev.off()
