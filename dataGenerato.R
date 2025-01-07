## dataGenerato.R ##

species_names <- c("A. gestroi", "A. klugii", "P. laevis", "T. biocellata", "P. scaber")
species_vec <- sample(species_names, 100, replace = TRUE)

limb_width <- abs(rnorm(100, mean = 4, sd = 1))
limb_length <- abs(rnorm(100, mean = 9, sd = 2))

observer_names <- c("McTaggart", "Zeno", "Socrates") 
observer <- sample(observer_names, 100, replace = TRUE)

library(tibble)
dat <- tibble("Species" = species_vec, "Limb Width (mm)" = limb_width, 
              "Limb Length (mm)" = limb_length, "Observer" = observer)
head(dat)
tail(dat)

write.csv(dat, "measurements.csv", row.names = FALSE)

