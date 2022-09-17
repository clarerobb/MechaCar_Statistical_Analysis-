# MechaCar Statistical Analysis with R 

## Overview

## Resources
- **Data Source:** MechaCar_mpg.csv, Suspension_Coil.csv
- **Software:** R version 4.2.1, RStudio 2022.07.1+554 

## Linear Regression to Predict MPG
The MechaCar dataset contains a sample size of 50 prototypes measuring the miles per gallon across multiple variables. 

As shown in the summary statistics below, the strongest contributors of non-random variance is **vehicle length** with a p-value of 2.60e-12 and **ground clearance** with a p-value of 5.21e-08.

The **slope of the linear model is not considered zero**. While vehicle weight and spoiler angle have slopes close to zero, the multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD).

The model **does predict the mpg of MechaCar prototypes effectively** as shown in the 0.7148 R-squared value.

#### Linear Model Summary Statistics 
![Screen Shot 2022-09-16 at 6 20 43 PM](https://user-images.githubusercontent.com/106405775/190830029-88529015-ac38-4064-a41f-4f4a0f08895e.png)

## Summary Statistics on Suspension Coils
MechaCar tested the weight capacities of multiple suspension coils if the manufacturing process to determine if they were consistent among production lots. 

#### Total Suspension Coils Statistics Summary
![Screen Shot 2022-09-16 at 7 13 24 PM](https://user-images.githubusercontent.com/106405775/190832925-20a7819c-95ca-4dda-aa28-5d1f9ca7416a.png)<br>
As shown above, the total variance for the suspension coils is 62 and within the expected design specifications 100 pounds per square inch.

#### Suspension Coils Statistics Summary by Production Lot
![Screen Shot 2022-09-16 at 7 17 29 PM](https://user-images.githubusercontent.com/106405775/190832963-eafc250b-9070-4bde-bd0e-6d1f6c03c6b7.png)<br>
When reviewing the data by lot, manufacturing lots 1 and 2 have low variances (1 and 7 respectively). However, manufacturing lot 3's variance is 170 and thus does not meet the expected design specifications of 100 pounds per square inch. 
