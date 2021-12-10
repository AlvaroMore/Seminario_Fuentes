#importamos librerias
library(dplyr)
library(tidyverse)
library(ggplot2)
library(readr)


calificaciones_de_zonas_de_aguas_de_bano <- read_delim("D:/ingenieria de la salud/3 aaño/FUENTES/PRACTICA TEMA 5/DATA/practica/calificaciones-de-zonas-de-aguas-de-bano.csv",
                                                       col_types = cols(Calificación = readr::col_factor(levels = c("EXCELENTE", "BUENA", "SUFICIENTE", "INSUFICIENTE","SIN CALIFICAR"))),
                                                       delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(calificaciones_de_zonas_de_aguas_de_bano)


library(readr)
turismorural <- read_delim("D:/ingenieria de la salud/3 aaño/FUENTES/PRACTICA TEMA 5/DATA/practica/turismorural.csv", 
                           delim = ";", escape_double = FALSE, locale = locale(encoding = "ASCII"), 
                           trim_ws = TRUE)
View(turismorural)
#En el csv importado los valores de la calidad del agua del baño viene calificada
#como Excelente, buena, suficiente y sin calificar por lo que se han modificado 
#a un valor numerico para poder realizar graficas
#EXCELENTE4,BUENA 3,SUFICIENTE 2 INSUFICIENTE 1, SIN CALIFICAR NA
#AÑO 2020
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
#grafico con provincias y calidad media del agua de baño 2020
grafica2020<-ggplot(data=calificacionesmediaProvincias2020, aes(x=reorder(Provincia,-Calificación), y=Calificación), fill = "rojo") + 
  geom_bar(stat="identity", position="dodge")+
  labs( title = "CALIFICACION AGUAS 2020 CYL",
        x = "Provincias",
        y = "Calificacion")+
  theme (plot.title = element_text(size=rel(2),   color="blue"))
#AÑO2019
calificacionesProvincia2019<-calificaciones_de_zonas_de_aguas_de_bano%>%
  dplyr::filter(.data = ., Año==2019)%>%
  select(Año,Provincia,Calificación)%>%
  mutate(Calificación = ifelse(Calificación=="EXCELENTE",4,ifelse(Calificación=="BUENA",3,ifelse(Calificación=="SUFICIENTE",2,ifelse(Calificación=="INSUFICIENTE",1,NA)))))
view(calificacionesProvincia2019)

calificacionesmediaProvincias2019<-calificacionesProvincia2019%>%
  group_by(Provincia)%>%
  filter(n() > 1) %>%
  summarise(across(where(is.numeric), ~ mean(.x, na.rm = TRUE)))
view(calificacionesmediaProvincias2019)
#grafico con provincias y calidad media del agua de baño 2019
grafica2019<-ggplot(data=calificacionesmediaProvincias2019, aes(x=reorder(Provincia,-Calificación), y=Calificación), fill = "rojo") + 
  geom_bar(stat="identity", position="dodge")+
  labs( title = "CALIFICACION AGUAS 2019 CYL",
        x = "Provincias",
        y = "Calificacion")+
  theme (plot.title = element_text(size=rel(2),   color="blue")) 

grafica2019
grafica2020

#Se ha importado un csv con las casas rurales de castilla y leon, para intentar relacionar
#si la calidad de agua de baño es mayor, hay mas casas rurales en esa provincia

levels(turismorural$Provincia)


barplot(table(turismorural$Provincia),
        col = "5",
        border="blue",
        main="CASAS RURALES POR PROVINCIA",
        xlab="Provincias",
        ylab="Nº de casas")
