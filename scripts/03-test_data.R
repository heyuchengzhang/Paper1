#### Preamble ####
# Purpose: Tests the cleaned data
# Author: Heyucheng Zhang
# Date: 26 September 2024
# Contact: heyucheng.zhang@mail.utoronto.ca
# License: None
# Pre-requisites: 00-simulate_data.R，01-download_data.R and 02-data_cleaning.R
# Other Information: Code is appropriately styled using styler


#### Workspace setup ####
library(tidyverse)

#### Test data ####

# Read data
cleaned_data <- read_csv("data/analysis_data/analysis_data.csv")

# Test if there are 158 unique ids in the "HOOD_ID" column
cleaned_data$HOOD_ID |>
  unique() |>
  length() == 158

# Test if there are 158 unique ids in the "AREA_NAME" column
cleaned_data$AREA_NAME |>
  unique() |>
  length() == 158

# Test if the "HOOD_ID" column is a numeric data type.
cleaned_data$HOOD_ID |>
  class() == "numeric"

# Test if the "AREA_NAME" column is a character data type.
cleaned_data$AREA_NAME |>
  class() == "character"

#### Test result ####
# Result: All TRUE
