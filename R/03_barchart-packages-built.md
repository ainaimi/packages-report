03\_barchart-packages-built.R
================
ashley
Tue Jan 15 17:19:58 2019

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

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

apt_freqtable <- read_csv(here("data","add-on-packages-freqtable.csv"))
```

    ## Parsed with column specification:
    ## cols(
    ##   Built = col_character(),
    ##   n = col_double(),
    ##   prop = col_double()
    ## )

``` r
## if you use ggplot2, code like this will work:
bar_plot <- ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_col()

pdf(here("figs","built-barchart.pdf"),width=4,height=4)
print(bar_plot)
dev.off()
```

    ## quartz_off_screen 
    ##                 2

``` r
png(here("figs","built-barchart.png"))
print(bar_plot)
dev.off()
```

    ## quartz_off_screen 
    ##                 2

``` r
## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now
## that's old output from me (Jenny)
```
