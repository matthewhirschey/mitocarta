#code to download mitocarta data
library(tidyverse)
library(here)
library(usethis)
library(janitor)

#https://www.broadinstitute.org/scientific-community/science/programs/metabolic-disease-program/publications/mitocarta/mitocarta-in-0
url <- "http://www.broadinstitute.org/ftp/distribution/metabolic/papers/Pagliarini/MitoCarta2.0/Human.MitoCarta2.0.txt"
mitocarta <- read_tsv(url, col_names = TRUE) %>%
  rename(MCARTA2_score = MCARTA2.0_score) %>%
  clean_names()

mitocarta$hg19_chromosome<- str_replace(as.matrix(mitocarta$hg19_chromosome), "chr", "")

chromosome_levels <- c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "X", "Y", "M")
mitocarta$hg19_chromosome<- fct_relevel(mitocarta$hg19_chromosome, chromosome_levels)

mitocarta$MCARTA2_LIST <- if_else(mitocarta$MCARTA2_LIST == 1, TRUE, FALSE)

#run to generate csv; commented out due to size
#write_csv(mitocarta, path = here::here("data-raw", "mitocarta.csv"))
usethis::use_data(mitocarta, overwrite = TRUE, compress = 'xz')
