# MechaCar_Statistical_Analysis

AutosRU data analysis to review the suffering production data for insights that may help the manufacturing team.

# Purpose
The purpose of this analysis is to observe and predict various car metrics through statistical analysis. The MechaCar is suffering from production troubles that are blocking the manufacturing team's progress. As a part of upper management, the data analytics team will review the production data on various attributes of the car to determine how the car can be measurably predicted.

# Linear Regression to Predict MPG
The dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. From using R, a linear model was created that predicts the mpg of MechaCar prototypes using several variables from the dataset. The output of this data is shown by the following:

 ![Deliverable1_MPG_Linear_Reg](https://user-images.githubusercontent.com/102339838/179429092-54224704-d8e9-46ff-9a65-bc4a58107b1a.png)

Based on this image, there are variables/coefficients that provide a non-random amount of variance to the mpg values in the dataset. The smallest standard error in the linear regression can be attributed to the vehicle weight and spoiler angle. These factors therefore have less variance when it comes to determining the vehicle's MPG.
Considering the slope of the linear model. We can consider it to be non-zero. If there is a significant linear relationship between the independent variable X and the dependent variable Y, the slope will not equal zero. This can be reasoned by following various methods of hypothesis testing in statistics. The solution to this problem takes four steps: (1) state the hypotheses, (2) formulate an analysis plan, (3) analyze sample data, and (4) interpret results. Assume a 0.05 level of significance.

 •	State the hypotheses: The first step is to state the null hypothesis and an alternative hypothesis.
    o	Ho: The slope of the regression line is equal to zero.
    o	Ha: The slope of the regression line is not equal to zero.
  
 •	Formulate an analysis plan: For this analysis, the significance level is 0.05. Using sample data, a  linear regression t-test was used to determine whether the slope of the regression line differs significantly from zero.

 •	Analyze sample data: To apply the linear regression t-test to sample data, it requires the standard error of the slope, the slope of the regression line, the degrees of freedom, the t statistic test statistic, and the P-value of the test statistic. Based on the t statistic test statistic and the degrees of freedom, we determine the P-value, which is 5.35e-11.

 •	Interpret results: Since the P-value (5.35e-11.) is much less than the significance level (0.05), we cannot accept the null hypothesis.

Does this linear model predict mpg of MechaCar prototypes effectively? This may be it's own experiment in and of itself to find out. The R-squared value is often a good indicator of fit. The current value of the multiple R-squared is 0.7149 and the adjusted R-squared is 0.6825. A 100% R-squared indicates that the model explains all the variability of the response data around its mean. In general, this model can reasonably predict the MPG of the MechaCar but it's not perfect.

# Summary Statistics on Suspension Coils
The MechaCar dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R, a summary statistics table was created to show the suspension coil’s PSI continuous variable across all manufacturing lots, and the following PSI metrics for each lot: mean, median, variance, and standard deviation. These are shown below:

 ![Deliverable2_Sus_Coil](https://user-images.githubusercontent.com/102339838/179429146-407c744b-1bae-4dfb-bd33-5d4bc8c17328.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data does meet this design specification for all manufacturing lots in total and each lot individually.
In each case, the mean and the median are exact or very close which would illustrate a good distribution in the coil data of the sample size. However, in each case the variance is quite significantly different which can contribute to varied PSI readings.
# T-Tests on Suspension Coils
Using R, a series of t-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. The same principles apply that were previously discussed for determining if the slope of the model was zero.
In stating the hypotheses, assuming a significance of 0.05, the null hypothesis and an alternative hypothesis are provided as follows:

- Ho: The value of PSI is a mean of 1,500 PSI, not statistically different.
- Ha: The value of PSI is a statistically different beyond 1500 PSI.
- 
•	All manufacturing lots
Reference the image below for the summary statistics:

![Deliverable3_t_test_allLots](https://user-images.githubusercontent.com/102339838/179429198-05f44695-24c8-4c11-bfde-aeb8b03dccae.png)

o	At a P-Value of 0.06, this fails to reject the null hypothesis and therefore not statistically different.
•	Lot 1
Reference the image below for the summary statistics:

![Deliverable3_t_test_Lot1](https://user-images.githubusercontent.com/102339838/179429222-e3b08db2-b07d-476d-806c-a838e7dc0223.png)

o	At a P-Value of 1, this fails to reject the null hypothesis and therefore not statistically different.
•	Lot 2
Reference the image below for the summary statistics:

![Deliverable3_t_test_Lot2](https://user-images.githubusercontent.com/102339838/179429236-8b895c55-385c-426b-bc45-5bd6a01933bc.png)

o	At a P-Value of 0.60, this fails to reject the null hypothesis and therefore not statistically different.
•	Lot 3
Reference the image below for the summary statistics:

![Deliverable3_t_test_Lot3](https://user-images.githubusercontent.com/102339838/179429239-e00e8950-168e-4ed9-b45f-de352b6340cc.png)

o	At a P-Value of 0.04, it is acceptable to reject the null hypothesis and therefore the PSI is statistically different.
# Study Design: MechaCar vs Competition
Using R, it is possible to design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
The following provides a structured breakdown for this potential case study:
•	What metric or metrics will be tested?
  o	Overall Safety Rating: Safety Ratings are available at https://www.nhtsa.gov/ratings. The "overall" category is made up of various sub-categories such as: Frontal Crash, Side Crash, Rollover, etc.; but this can remain solely categorical like (e.g., A, B, C, D, E, and F)
  
  o	Vehicle Weight: This data is publicly available for current cars using the proper scraping tools. This can be converted into "buckets". For example, for cars weighing 0.5 - 2.0 tons (e.g., 1000 - 4000 pounds), one would need twelve 250-pound weight ‘categories.
  
•	What is the null hypothesis or alternative hypothesis?

  o	Null Hypothesis: The MechaCar scores higher in consumer satisfaction based on safety, efficiency, and performance.
  o	Alternative Hypothesis: The competition maintains overall performance overall the MechaCar with its consumers.
  
•	What statistical test would be used to test the hypothesis? And why?

  o	Chi-Squared Test: This test can be used to determine if there is a difference in categorical frequencies between groups.
  o	If the p-value of the Chi-Squared Test is below 0.05, then one can reject the Null Hypothesis, and know that combining all these factors also led to increase in the overall performance of the competition.
  
•	What data is needed to run the statistical test?

  o	Cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating (including the MechaCar).
  o	Verify Pre-conditions for Chi-Squared Test
	Each subject within a group contributes to only one frequency. In other words, the sum of all frequencies equals the total number of subjects in a dataset.
	Each unique value has an equal probability of being observed.
	There is a minimum of five observed instances for every unique value for a 2x2 chi-squared table.
	For a larger chi-squared table, there is at least one observation for every unique value and at least 80% of all unique values have five or more observations.

# Summary
Based on the analysis above, the major impacts on MPG are car weight, spoiler angle, and AWD capability. This means that for any improvement on the MPG of the MechaCar, designers and engineers to consider these variables. In addition, when looking at suspicion coils, Lot 3 has the most variance and lower PSI average. This could mean that Lot 3 should not be used within the MechaCar. The t-test is a viable way to create multiple case studies of the Mechcar beyond what was found here.
