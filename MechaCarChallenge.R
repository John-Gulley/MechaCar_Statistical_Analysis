# Import dependencies

library(dplyr)
library(tidyverse)

# Read CSV
mechacar <-read_csv("Data/MechaCar_mpg.csv")

#Linear Regression
mecha_lm <- lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)

# Summary of linear regression model
model <- summary(mecha_lm)

#Plot the linear regression model
#y_vals <- model$coefficients['(Intercept)'] + model$coefficients['vehicle_length']*mechacar$vehicle_length + model$coefficients['vehicle_weight']*mechacar$vehicle_weight + model$coefficients['spoiler_angle']*mechacar$spoiler_angle + model$coefficients['ground_clearance']*mechacar$ground_clearance + model$coefficients['AWD']*mechacar$AWD


# Read CSV for suspension coil
sus_coil <-read_csv("Data/Suspension_Coil.csv")

total_summary <- sus_coil%>%summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))


lot_summary <- sus_coil%>%group_by(Manufacturing_Lot)%>%summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI), .groups='keep')

#Deliverable 3: T-Tests
t.test(sus_coil$PSI, mu=1500)

t.test(subset(sus_coil,Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(sus_coil,Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(sus_coil,Manufacturing_Lot == "Lot3")$PSI, mu=1500)