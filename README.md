# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Reviewing the data image below; you will notice that the P-Values for Ground Clearance and MPG categories were sufficient below the standard P-Value of '.05'.  Given that they scored below the P-Value we can safely say that they would meet the criteria to provide non-random variance to performance.  While the remaining categories all scored above the average P-value indicating that they would fail to reject the null hypothesis - therefore providing random variance levels to performance.

The multiple linear regression model accounts for roughly 70 % of the outcomes, with an R-squared of .7119.  The slope of the resulting model would be recognized as 0 ; with the intercerpt value being '<2e-16', the slope would be virtually imperceptable using any visual analysis. 

As with most analysis, I believe that the regression model we have completed here has allowed us to identify more relevant contributing factors.  As the model shows below; the ground clearance and mpg categories due show a statitically relevant value and therefore should be showing an effective prediction of the possible MPG efficiencies that MechaCar could produce. Additionally, when looking to the factors that may not be contributing as effectively, (i.e. vehicle weight, spoiler angle & AWD), we can safely assume that these factors are not statistically relevant.  

![MultipleLinearRegression](https://github.com/Gkmb2390/MechaCar_Statistical_Analysis/blob/main/Summary%20of%20Multiple%20Linear%20Regression.png)


## Summary Statistics on Suspension Coils

In reviewing the outcomes of the data analysis for the suspension coils, we have discovered that Lot 1 & Lot 2 do meet the design specifications required by MechaCar.  When reviewing the chart below, we see that Lot 3 does not meet the specifications, at a variance of roughly 170 psi.  MechaCar should discontinue or rework the production designs for Lot 3 suspension coils, until the meet the new requirements.  Given that they have 2 alternative methods of production and development of the suspension coils they shouldn't be overly concerned with Lot 3.

![SummaryOfLotResults](https://github.com/Gkmb2390/MechaCar_Statistical_Analysis/blob/main/Summary%20of%20Lot%20Results.png)



## T-Tests on Suspension Coils
After reviewing our findings from the multiple t-tests preformed for Suspension Coils, we find that we do not have sufficient evidence to reject the null hypothesis.  In this circumstance each instance of t-tests preformed indicated a P Value greater than our standard p value (.05), which leads us to believe that the results are due to random chance rather than a specific dependent variable.  Beginning with a t-test across all samples, we can see that the p-value ultimately calculated as .16 - initially suggesting that the null hypothesis is correct.  Later when taking samples from each of the 3 lots, we find that two of the p-values are also greater than our standard p value, with lots first & second having p values of .57 & .78, respectively.  The third lot does appear to have a p-value less than our standard(.05) at .013.  The images below are taken from each of the respective tests.  


![t-teststotal](https://github.com/Gkmb2390/MechaCar_Statistical_Analysis/blob/main/tTest%20results%20all%20lots.png)

![t-testslot1](https://github.com/Gkmb2390/MechaCar_Statistical_Analysis/blob/main/ttes%20results%20sample%201.png)

![t-testslot2](https://github.com/Gkmb2390/MechaCar_Statistical_Analysis/blob/main/ttes%20results%20sample%202.png)

![t-testslot3](https://github.com/Gkmb2390/MechaCar_Statistical_Analysis/blob/main/ttes%20results%20sample%203.png)


## Study Design: MechaCar vs Competition

I believe an interesting study design that would be relevant to many consumers would concern both the overall original price and the maintenance costs to keep the vehicle running well.  While many consumers consider that overall price of the vehicle when making purchasing decisions and often overlooked value that exists within the maintenance costs of these vehicles.  Depending on brand, make, model and many other factors concerned with the manufacturing practices of vehicles, some vehicles can cost just as much in maintenance - or even more, than the original price of the vehicle.  

I would propose a study reviewing the relationship between cost of the vehicle and maintenance cost.  It is my belief that the greater the original/'sticker' cost of the vehicle - then the vehicle would require more rigorous and through maintenance; therefore directly increasing the cost of maintenance for the vehicle.  Considering these assumptions, I believe that the most useful test to identify the relation between Cost & Maintenance Cost would be a Linear Regression.  The Null hypothesis of the Linear regression would assume the position that there is no direct correlation between cost & maintenance costs, and rather that it is impacted by random chance.  While the alternative hypothesis would indicate that there is a correlation between the cost & maintenance costs of the vehicles being produced and sold.   

Using a Linear regression would require us to gather the cost data as well as the estimated maintenance costs each of the different types of vehicles. We may also want to group the test by different vehicle types, with the consideration that higher performance/recreational vehicles may require more maintenance than those that are meant to be more casually used.   
