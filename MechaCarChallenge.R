# Deliverable 1

# load the dplyr package
library(dplyr)

#read MechaCar_mpg.csv 
mpg <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)

#Perform linear regression 
mecha_car_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance
   + AWD, data=mpg)

#Using the summary() function, determine the p-value and r-squared value
summary(mecha_car_lm)