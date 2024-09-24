#### Preamble ####
# Purpose: Simulates Data
# Author: Heyucheng Zhang
# Date: 19 September 2024
# Contact: heyucheng.zhang@mail.utoronto.ca
# License: None
# Pre-requisites: None


#### Workspace setup ####
#install.packages("opendatatoronto")
#install.packages("knitr")
#install.packages("tidyverse")
library(knitr)
library(opendatatoronto)
library(tidyverse)

#### Simulate data ####

# Set a seed for reproducibility
set.seed(123)

# Define the number of neighbourhoods for the simulation
number_of_neighbourhoods <- 158

# Define the years for the simulation
years <- 2014:2023

# Define a list of AREA_NAMES
area_names <- paste("Neighbourhood", 1:number_of_neighbourhoods)

# Simulate data
simulated_data <- tibble(
  X_id = 1:number_of_neighbourhoods,
  AREA_NAME = area_names,
  ASSAULT_2014 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  ASSAULT_2015 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  ASSAULT_2016 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  ASSAULT_2017 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  ASSAULT_2018 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  ASSAULT_2019 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  ASSAULT_2020 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  ASSAULT_2021 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  ASSAULT_2022 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  ASSAULT_2023 = sample(0:500, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2014 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2015 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2016 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2017 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2018 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2019 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2020 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2021 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2022 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  AUTOTHEFT_2023 = sample(0:50, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2014 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2015 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2016 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2017 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2018 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2019 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2020 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2021 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2022 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BIKETHEFT_2023 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2014 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2015 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2016 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2017 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2018 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2019 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2020 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2021 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2022 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  BREAKENTER_2023 = sample(0:80, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2014 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2015 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2016 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2017 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2018 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2019 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2020 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2021 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2022 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  HOMICIDE_2023 = sample(0:10, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2014 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2015 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2016 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2017 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2018 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2019 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2020 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2021 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2022 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  ROBBERY_2023 = sample(0:40, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2014 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2015 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2016 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2017 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2018 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2019 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2020 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2021 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2022 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  SHOOTING_2023 = sample(0:20, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2014 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2015 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2016 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2017 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2018 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2019 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2020 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2021 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2022 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTFROMMV_2023 = sample(0:70, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2014 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2015 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2016 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2017 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2018 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2019 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2020 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2021 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2022 = sample(0:30, number_of_neighbourhoods, replace = TRUE),
  THEFTOVER_2023 = sample(0:30, number_of_neighbourhoods, replace = TRUE)
)

# Display the head of the simulated data
head(simulated_data)



