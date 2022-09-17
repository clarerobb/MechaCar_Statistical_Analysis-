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

# Deliverable 2
#read Suspension_Coil.csv
suspension <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)

#summary statistics 
total_summary <- suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#lot summary
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Deliverable 3
# Using the t-test, determine if PSI is statistically different across all manufacturing lots
t.test(suspension[['PSI']], mu=1500)

# t.test for lot 1
t.test(subset(suspension, Manufacturing_Lot=='Lot1')[['PSI']], mu=1500)

# t.test for lot 2
t.test(subset(suspension, Manufacturing_Lot=='Lot2')[['PSI']], mu=1500)

# t.test for lot 3
t.test(subset(suspension, Manufacturing_Lot=='Lot3')[['PSI']], mu=1500)