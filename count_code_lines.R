library(dplyr)
library(stringr)
# Count your lines of R code
list.files(path = "/Users/vinaykl/PhD/Classes", recursive = T, full.names = T) %>%
  str_subset("[.][R]$") %>%
  sapply(function(x) x %>% readLines() %>% length()) %>%
  sum()