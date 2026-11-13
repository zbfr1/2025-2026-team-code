#| load-pacakges
library(tidyverse)
library(janitor)
library(readxl)

#| read-data
duml_ph <- read_xlsx("Cleaned/DUML_pH_2026.xlsx")

#| clean-data
duml_ph_cleaned <- duml_ph |>
    clean_names() |>
    select(-number) |>
    mutate(date = date_time...) |>
    mutate(time = date_time ....)
