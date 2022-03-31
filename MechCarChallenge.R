#Imports Tinyverse & Dyplr Library
library(tinyverse)
#Imports the MechaCar MPG CSV file as dataframe
MechaCarMPGdf <- read.csv(file = "MechaCar_mpg.csv")
#Perform Multiple Linear Regression and pass data into the previously created DF
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = MechaCarMPGdf)
#Summary of the Multiple Linear Regression from previous step
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = MechaCarMPGdf))
#Import Suspension Coil Data from CSV file as DataFrame
Suspension_Data <- read.csv(file = "Suspension_Coil.csv")
#Create Total Summary Object - with Mean Median Variance and Standar Dev of PSI
total_summary <- Suspension_Data %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
#Create new Summary Object that organizes previous data by Lot #
lot_summary <- Suspension_Data %>% group_by(Manufacturing_Lot) %>%  summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
