png(file='plot4.png')
par(mfrow=c(2, 2))

plot(df$`Date/Time`, df$Global_active_power, type = "l", lty = 1, xlab='', ylab='Global Active Power')

plot(df$`Date/Time`, df$Voltage, type = "l", lty = 1, xlab='datetime', ylab='Voltage')

plot(df$`Date/Time`, df$Sub_metering_1, type='n', xlab='', ylab='Energy sub metering')
legend('topright', inset=0.01, box.lty=0, lty=1, col = c('black', 'red', 'blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
lines(df$`Date/Time`, df$Sub_metering_1, type='l', col='black')
lines(df$`Date/Time`, df$Sub_metering_2, type='l', col='red')
lines(df$`Date/Time`, df$Sub_metering_3, type='l', col='blue')

plot(df$`Date/Time`, df$Global_reactive_power, type = "l", lty = 1, xlab='datetime', ylab='Global_reactive_power')

dev.off()
