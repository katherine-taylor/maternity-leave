library(targets)

# source in functions files
source("R/01_data_cleaning.R")

# random number from https://stattrek.com/statistics/random-number-generator.aspx#error
set.seed(91006)

# quiet tidyverse
options(tidyverse.quiet = TRUE)
# packages
package_list = c("tidyverse","janitor")
tar_option_set(packages = package_list)


list(
  tar_target(
    mat_health_raw,
    here::here("data/raw_data/maternal_health_outcomes.csv"),
    format = "file"
  ),
  tar_target(
    mat_leave_raw,
    here::here("data/raw_data/maternity_leave_raw_data.csv"),
    format = "file"
  ),
  tar_target(
    mat_health_data, 
    clean_data_outcomes(mat_health_raw)
  ),
  tar_target(
    mat_leave_data,
    clean_data(mat_leave_raw)
  )
)