#' ---
#' output: github_document
#' ---

library(here)
library(tidyverse)

## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

apt_freqtable <- read_csv(here("data","add-on-packages-freqtable.csv"))

## if you use ggplot2, code like this will work:
bar_plot <- ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_col()

pdf(here("figs","built-barchart.pdf"),width=4,height=4)
print(bar_plot)
dev.off()

png(here("figs","built-barchart.png"))
print(bar_plot)
dev.off()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now
## that's old output from me (Jenny)
