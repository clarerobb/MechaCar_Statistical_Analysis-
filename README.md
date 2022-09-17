# MechaCar Statistical Analysis with R 

## Overview
AutosRUs' new MechaCar is having difficulties in production. The company requested an analytical review to provide some insight into the problems. This project analyzes the following:
- which variables predict the MPG for vehicle prototypes
- summarizes the PSI of suspension coils across manufacturing lots
- determines if the manufacturing lots are statistically different from the mean population
- designs a study to compar the MechaCar against competitors 

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

## T-Tests on Suspension Coils
As shown below, the t-test for the PSI in the suspension coils across all manufacturing lots shows that they are not statistically different from the mean population because the p-value is .06 which is too high to reject the null hypothesis.
![Screen Shot 2022-09-17 at 3 56 13 PM](https://user-images.githubusercontent.com/106405775/190876136-2deacab7-328a-49c0-b580-b999b1ad4075.png)

Similiarly, the t-tests for manufacturing lots 1 and 2 show that they are statistically similar to the mean population with a p-value of 1 and .61 respectively. Both values fail to reject the null hypothesis.
<br>
|T-test for Manufacturing Lot 1 | T-test for Manufacturing Lot 2 |
|-------------------------------|--------------------------------|
|![Screen Shot 2022-09-17 at 4 03 50 PM](https://user-images.githubusercontent.com/106405775/190876363-2e04d41e-9680-4bca-9428-4d9395d664c6.png)| ![Screen Shot 2022-09-17 at 4 04 25 PM](https://user-images.githubusercontent.com/106405775/190876379-c908942c-98b8-4d7b-b76b-cc08b7b8831e.png)|

However, the p-value for manufacturing lot 3 is .04 which is low enough to reject the null hypothesis. This means the PSI's do not match the mean population. <br>
![Screen Shot 2022-09-17 at 4 13 07 PM](https://user-images.githubusercontent.com/106405775/190876632-22175c70-404c-43c8-81d9-d4d26a30c9d5.png)

## Study Design: MechaCar vs Competition
While consumers consider multiple metrics when comparing cars to purchase, fuel efficiency is becoming a very important metric as cars move toward electric and gas prices continue to rise. Thus, AutosRUs should further compare MechaCar's city and highway fuel efficiency against competitors. 

#### Metrics to test
This study would require numberical data on both MechaCar's and competitors' fuel economy as measured in miles per gallon (mpg) in urban areas as well as on the highway. 

#### Null and Alternative Hypothesis
Null Hypothesis: There is no statistical difference between MechaCar's and the competition's fuel economy datasets.

Alternative Hypothesis: There is a statistical difference between MechaCar's and the competition's mpg.

#### Statistical Tests
To test this hypothesis, a two-sample t-test would provide a good analysis. A p-value of 0.05 or less would demonstrate significant evidence to reject the null hypothesis. This could indicate that the MechaCar provides better fuel efficiency than the competitors mpg. 

#### Data Needed for Testing
In addition to the data in `MechaCar_mpg.csv`, datasets from MechaCar and its competitors will need to be as large as possible, with data samples being randomly selected. To draw an accurate comparison, the variance between the data needs to be similar. 
