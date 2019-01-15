02\_wrangle-packages.R
================
ashley
Tue Jan 15 17:18:51 2019

``` r
library(here)
```

    ## here() starts at /Users/ashley/Downloads/packages-report

``` r
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────── tidyverse 1.2.1.9000 ──

    ## ✔ ggplot2 3.1.0.9000     ✔ purrr   0.2.5     
    ## ✔ tibble  2.0.0          ✔ dplyr   0.7.8     
    ## ✔ tidyr   0.8.2          ✔ stringr 1.3.1     
    ## ✔ readr   1.3.1          ✔ forcats 0.3.0

    ## ── Conflicts ─────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
## remember to restart R here!

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

pkg_file <- read_csv(here("data","installed-packages.csv"))
```

    ## Parsed with column specification:
    ## cols(
    ##   Package = col_character(),
    ##   LibPath = col_character(),
    ##   Version = col_character(),
    ##   Priority = col_character(),
    ##   Built = col_character()
    ## )

``` r
## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
apt <- pkg_file %>%
  filter(is.na(Priority)) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

write_csv(apt,here("data","add-on-packages.csv"))

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

write_csv(apt_freqtable,here("data","add-on-packages-freqtable.csv"))

## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
```
