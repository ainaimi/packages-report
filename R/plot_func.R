#' ---
#' ourput: github_document
#' ---


library(tidyverse)
plotDat <- tibble(a=sin(rnorm(1000)),
                  b=cos(rnorm(1000)))

ggplot(plotDat) + geom_point(aes(a,b))