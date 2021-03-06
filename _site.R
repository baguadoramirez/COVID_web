# =============================================================================
# Libraries: DONT REMOVE ANY, NEVER, NUNCA, MAI
# =============================================================================
library("tidyverse")
library("EpiEstim")
library("cowplot")
library("readr")
library("lubridate")
library("RcppRoll")
library("reactable")


theme_set(theme_minimal(15))

ma <- function(arr, n=15){
  res = arr
  for(i in n:length(arr)){
    res[i] = mean(arr[(i-n):i])
  }
  res
}