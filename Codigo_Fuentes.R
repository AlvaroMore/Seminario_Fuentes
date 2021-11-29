library(readr)
library(dplyr)

calidad_de_las_aguas_de_consumo_humano <- read_delim("C:/Users/ignac/Desktop/calidad-de-las-aguas-de-consumo-humano.csv", 
                                                     delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(calidad_de_las_aguas_de_consumo_humano)