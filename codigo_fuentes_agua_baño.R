library(dplyr)
library(tidyverse)
library(ggplot2)
library(readr)

calificaciones_de_zonas_de_aguas_de_bano <- read_delim("D:/ingenieria de la salud/3 aaño/FUENTES/PRACTICA TEMA 5/DATA/practica/calificaciones-de-zonas-de-aguas-de-bano.csv",
                                                       col_types = cols(Calificación = readr::col_factor(levels = c("EXCELENTE", "BUENA", "SUFICIENTE", "INSUFICIENTE","SIN CALIFICAR"))),
                                                       delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(calificaciones_de_zonas_de_aguas_de_bano)


library(readr)
analisis_aguas_residuales_covid <- read_delim("D:/ingenieria de la salud/3 aaño/FUENTES/PRACTICA TEMA 5/DATA/practica/analisis-aguas-residuales-covid.csv", 
                                              delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(analisis_aguas_residuales_covid)
library(readr)
turismorural <- read_delim("D:/ingenieria de la salud/3 aaño/FUENTES/PRACTICA TEMA 5/DATA/practica/turismorural.csv", 
                           delim = ";", escape_double = FALSE, locale = locale(encoding = "ASCII"), 
                           trim_ws = TRUE)
View(turismorural)