# Import dependencies

library(dplyr)
library(tidyverse)

# Read CSV
sus_coil <-read_csv("Data/Suspension_Coil.csv")

total_summary <- sus_coil%>%summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))


lot_summary <- sus_coil%>%group_by(Manufacturing_Lot)%>%summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI), .groups='keep')