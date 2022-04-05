#Imports Tinyverse & Dyplr Library
install.packages("tidyverse")
library("tidyverse")
#Imports the MechaCar MPG CSV file as dataframe
MechaCarMPGdf <- read.csv(file = "MechaCar_mpg.csv")

#Perform Multiple Linear Regression and pass data into the previously created DF
lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data = MechaCarMPGdf)

#Summary of the Multiple Linear Regression from previous step
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length, data = MechaCarMPGdf))

#Import Suspension Coil Data from CSV file as DataFrame
Suspension_Data <- read.csv(file = "Suspension_Coil.csv")

#Create Total Summary Object - with Mean Median Variance and Standar Dev of PSI
total_summary <- Suspension_Data %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

#Create new Summary Object that organizes previous data by Lot #
lot_summary <- Suspension_Data %>% group_by(Manufacturing_Lot) %>%  summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

#Run a t Test to determine if the PSI is statistically different across lots  
PSI_data_sample <- Suspension_Data %>% filter(PSI>1) %>% sample_n(30)
t.test(PSI_data_sample$PSI,mu=1500)

#Run a t Test to determine if the PSI is statistically different across each of the lots individually
sample_lot <- Suspension_Data %>%  filter(Manufacturing_Lot== 'Lot1') %>% sample_n(25)
sample_lot2 <- Suspension_Data %>%  filter(Manufacturing_Lot== 'Lot2') %>% sample_n(25)
sample_lot3 <- Suspension_Data %>%  filter(Manufacturing_Lot== 'Lot3') %>% sample_n(25)
t.test(sample_lot$PSI,mu=1500)
t.test(sample_lot2$PSI,mu=1500)
t.test(sample_lot3$PSI,mu=1500)

#t.test(subset(Suspension_Data, Manufacturing_Lot=='Lot1')$PSI,mu=1500)
#t.test(subset(Suspension_Data, Manufacturing_Lot=='Lot2')$PSI,mu=1500)
#t.test(subset(Suspension_Data, Manufacturing_Lot=='Lot3')$PSI,mu=1500)
