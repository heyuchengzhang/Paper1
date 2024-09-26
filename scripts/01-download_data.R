#### Preamble ####
# Purpose: Downloads and saves the raw data from Open Data Toronto
# Author: Heyucheng Zhang
# Date: 26 September 2024
# Contact: heyucheng.zhang@mail.utoronto.ca
# License: None
# Pre-requisites: 00-simulate_data.R
# Other Information: Code is appropriately styled using styler


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
# Load the package
package <- show_package("neighbourhood-crime-rates")

# List the resources in the package
resources <- list_package_resources("neighbourhood-crime-rates")

# Filter the resources
datastore_resources <- filter(resources, tolower(format) %in% c("csv", "geojson"))

# Select the second resource and download it
data <- filter(datastore_resources, row_number() == 4) %>% get_resource()

#### Save data ####
write_csv(data, "data/raw_data/raw_data.csv")
