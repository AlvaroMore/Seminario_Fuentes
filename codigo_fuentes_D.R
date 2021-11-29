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
#EXCELENTE4,BUENA 3,SUFICIENTE 2 INSUFICIENTE 1, SIN CALIFICAR NA
calificacionesProvincia2020<-calificaciones_de_zonas_de_aguas_de_bano%>%
  dplyr::filter(.data = ., Año==2020)%>%
  select(Año,Provincia,Calificación)%>%
  mutate(Calificación = ifelse(Calificación=="EXCELENTE",4,ifelse(Calificación=="BUENA",3,ifelse(Calificación=="SUFICIENTE",2,ifelse(Calificación=="INSUFICIENTE",1,NA)))))
view(calificacionesProvincia2020)

calificacionesmediaProvincias2020<-calificacionesProvincia2020%>%
  group_by(Provincia)%>%
  filter(n() > 1) %>%
  summarise(across(where(is.numeric), ~ mean(.x, na.rm = TRUE)))
view(calificacionesmediaProvincias2020)
#grafico con provincias y calidad media del agua de baño
ggplot(data=calificacionesmediaProvincias2020, aes(x=reorder(Provincia,-Calificación), y=Calificación), fill = "rojo") + 
  geom_bar(stat="identity", position="dodge")





#segunda parte
analisis_aguas_residuales_covid%>%
  select(analisis_aguas_residuales_covid$EDAR=="EBAR ARROYO DE LA ENCOMIENDA")%>%
  
  