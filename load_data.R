data_full <- read.table("./household_power_consumption.txt",
  sep = ";",
  header = TRUE,
  colClasses = c(rep('character', 2), rep('numeric', 7)), 
  na.strings = '?'
)

library(tidyverse)
library(dplyr)

time_convert <- function(a) {
	strptime(a, "%d/%m/%Y %H:%M:%S")
}

data_full$`Date/Time` <- time_convert(paste(data_full$Date, data_full$Time))
data_full <- select(data_full, `Date/Time`, everything(), -Date, -Time)

df <- data_full[time_convert('1/2/2007 0:0:0') <= data_full$`Date/Time` & data_full$`Date/Time`<time_convert('3/2/2007 0:0:0'),]
remove(data_full)
