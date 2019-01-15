#' ---
#' output: github_document
#' ---

library(here)
library(tidyverse)

pkgs <- installed.packages() %>%
  as_tibble() %>%
  select(Package,LibPath,Version,Priority,Built)

write_csv(pkgs,here("data","installed-packages.csv"))

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now (or delete it first)
## that's a old result from me (Jenny)
## it an example of what yours should look like and where it should go
