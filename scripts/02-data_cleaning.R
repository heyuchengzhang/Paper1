#### Preamble ####
# Purpose: Cleans the raw data
# Author: Heyucheng Zhang
# Date: 26 September 2024
# Contact: heyucheng.zhang@mail.utoronto.ca
# License: None
# Pre-requisites: 00-simulate_data.R and 01-download_data.R
# Other Information: Code is appropriately styled using styler

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Clean data ####

# Read data
raw_data <- read_csv("data/raw_data/raw_data.csv")

# Clean data
cleaned_data <-
  raw_data |>
  select(
    HOOD_ID, AREA_NAME, # Select the number of crimes per year in each neighbourhood
    ASSAULT_2014:ASSAULT_2023,
    AUTOTHEFT_2014:AUTOTHEFT_2023,
    BIKETHEFT_2014:BIKETHEFT_2023,
    BREAKENTER_2014:BREAKENTER_2023,
    HOMICIDE_2014:HOMICIDE_2023,
    ROBBERY_2014:ROBBERY_2023,
    SHOOTING_2014:SHOOTING_2023,
    THEFTFROMMV_2014:THEFTFROMMV_2023,
    THEFTOVER_2014:THEFTOVER_2023
  ) |>
  mutate_all(~ replace_na(., 0)) # Replace any "NA" values with "0"


#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
