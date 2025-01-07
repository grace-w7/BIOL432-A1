## dataGenerato.R ##

#Species name vector w/ sample size of 100
species_names <- c("A. gestroi", "A. klugii", "P. laevis", "T. biocellata", "P. scaber")
species_vec <- sample(species_names, 100, replace = TRUE)

#Limb width and length vectors (randomly assigned values)
limb_width <- abs(rnorm(100, mean = 4, sd = 1))
limb_length <- abs(rnorm(100, mean = 9, sd = 2))

#Observers vector
observer_names <- c("McTaggart", "Zeno", "Socrates") 
observer <- sample(observer_names, 100, replace = TRUE)

#Combining all of the aforementioned vectors into one dataframe w/ tibble
library(tibble)
dat <- tibble("Species" = species_vec, "Limb_Width_mm" = limb_width, 
              "Limb_Length_mm" = limb_length, "Observer" = observer)

#Checking data
head(dat)
tail(dat)

#Exporting dat to csv file
write.csv(dat, "measurements.csv", row.names = FALSE)

