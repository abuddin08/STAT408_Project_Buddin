install.packages("janitor")
library("tidyverse")
library("janitor")
nest_data_rough <- read.csv("C:/Users/apbb0/OneDrive - Montana State University/STAT408/Project/wfib.ns.data_data_release.csv")

#fixes column names
clean_str <- function(x) {
  clean_names(x)
}

nest_data = clean_str(nest_data)


names(nest_data)
ncol(nest_data) # there are 10 variables measured
nrow(nest_data) # there are 735 observed nests
max(nest_data$EstimatedNestAge)
## the oldest nest is estimated to be 30 years old.




#inital graph shows a slight visual positive relationship
#between clutch size and estimated nest age.
ggplot(data = nest_data, aes(x = VegPercent.Vegetation, y = AvgVegHeight)) +
  geom_point()

sum(nest_data$survive.full)
nrow(nest_data)

ggplot(data = nest_data, aes(x = AvgVegHeight, y = EstimatedNestAge )) +
  geom_point()
