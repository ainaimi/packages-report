01\_write-installed-packages.R
================
ashley
Tue Jan 15 17:16:11 2019

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
```
