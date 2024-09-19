#### Preamble ####
# Purpose: Tests of the data
# Author: Fangning Zhang
# Date: 19 September 2024
# Contact: fangning.zhang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))

# Test for unique dates
length(unique(data$date)) == nrow(data)

# Test for date range consistency
# Assuming the data should only contain dates in 2024
all(data$date >= as.Date("2024-01-01") & data$date <= as.Date("2024-12-31"))


