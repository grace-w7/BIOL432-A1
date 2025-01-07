## volumeEstimato.R ##

#Loading in dplyr package
library(dplyr)

#Reading csv file and ensuring data was entered correctly
meas_dat <- read.csv("measurements.csv")
head(meas_dat)

#Adding volume column to the data (calculated using volume of a cylinder)
meas_dat <- meas_dat %>%
  mutate(Volume_mm3 = pi * (Limb_Width_mm / 2)^2 * Limb_Length_mm)

#Overwrite old csv file with new data
write.csv(dat, "measurements.csv", row.names = FALSE)

#Check changed data frame
head(meas_dat)
tail(meas_dat)
