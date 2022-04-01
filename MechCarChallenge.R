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

#Run a t Test to determine if the PSI is statistically different across lots  
PSI_data_sample <- Suspension_Data %>% filter(PSI>1) %>% sample_n(30)
t.test(PSI_data_sample$PSI,Suspension_Data$PSI)


#Run a t Test to determine if the PSI is statistically different across each of the lots individually
sample_lot <- Suspension_Data %>%  filter(Manufacturing_Lot== 'Lot1') %>% sample_n(10)
sample_lot2 <- Suspension_Data %>%  filter(Manufacturing_Lot== 'Lot2') %>% sample_n(10)
sample_lot3 <- Suspension_Data %>%  filter(Manufacturing_Lot== 'Lot3') %>% sample_n(10)
t.test(sample_lot$PSI,sample_lot2$PSI)
t.test(sample_lot$PSI,sample_lot3$PSI)
t.test(sample_lot2$PSI,sample_lot3$PSI)
