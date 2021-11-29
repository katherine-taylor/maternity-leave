# 01_data_cleaning.R
# Sun Nov 28 19:27:03 2021 ------------------------------

test_data_path <- here::here("data/raw_data/maternal_health_outcomes.csv")
clean_data_outcomes <- function(data_path){
  raw_data <- read_csv(data_path)
  cleaned_data <- raw_data |> 
    clean_names()
  return(cleaned_data)
}

test_data <- clean_data_outcomes(test_data_path)

test_data
