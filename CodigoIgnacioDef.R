library(readr)
library(dplyr)
library(tidyverse)
library(ggplot2)

calidad_de_las_aguas_de_consumo_humano <- read_delim("C:/Users/ignac/Desktop/calidad-de-las-aguas-de-consumo-humano.csv", 
                                                     delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(calidad_de_las_aguas_de_consumo_humano)

View(calidad_de_las_aguas_de_consumo_humano)
levels(factor(calidad_de_las_aguas_de_consumo_humano$`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo`))
levels(factor(calidad_de_las_aguas_de_consumo_humano$`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo con no conformidad`))
levels(factor(calidad_de_las_aguas_de_consumo_humano$`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo`))
levels(factor(calidad_de_las_aguas_de_consumo_humano$`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo con riesgo para la salud`))
levels(factor(calidad_de_las_aguas_de_consumo_humano$`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`))



calidadAguaAptaProvincia2019<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2019)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo`,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo con no conformidad`)
calidadAguaAptaProvincia2019$AptosTotal = rowSums (calidadAguaAptaProvincia2019[ ,3:4])
View(calidadAguaAptaProvincia2019)


calidadAguaNoAptaProvincia2019<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2019)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo`,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo con riesgo para la salud`)
calidadAguaNoAptaProvincia2019$NoAptosTotal = rowSums (calidadAguaNoAptaProvincia2019[ ,3:4])
View(calidadAguaNoAptaProvincia2019)


calidadAguaSinAnalisisProvincia2019<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2019)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`)
View(calidadAguaSinAnalisisProvincia2019)




calidadAguaAptaProvincia2018<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2018)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo`,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo con no conformidad`)
calidadAguaAptaProvincia2018$AptosTotal = rowSums (calidadAguaAptaProvincia2018[ ,3:4])
View(calidadAguaAptaProvincia2018)


calidadAguaNoAptaProvincia2018<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2018)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo`,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo con riesgo para la salud`)
calidadAguaNoAptaProvincia2018$NoAptosTotal = rowSums (calidadAguaNoAptaProvincia2018[ ,3:4])
View(calidadAguaNoAptaProvincia2018)

calidadAguaSinAnalisisProvincia2018<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2018)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`)
View(calidadAguaSinAnalisisProvincia2018)



calidadAguaAptaProvincia2017<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2017)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo`,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo con no conformidad`)
calidadAguaAptaProvincia2017$AptosTotal = rowSums (calidadAguaAptaProvincia2017[ ,3:4])
View(calidadAguaAptaProvincia2017)


calidadAguaNoAptaProvincia2017<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2017)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo`,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo con riesgo para la salud`)
calidadAguaNoAptaProvincia2017$NoAptosTotal = rowSums (calidadAguaNoAptaProvincia2017[ ,3:4])
View(calidadAguaNoAptaProvincia2017)

calidadAguaSinAnalisisProvincia2017<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2017)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`)
View(calidadAguaSinAnalisisProvincia2017)



calidadAguaAptaProvincia2016<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2016)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo`,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo con no conformidad`)
calidadAguaAptaProvincia2016$AptosTotal = rowSums (calidadAguaAptaProvincia2016[ ,3:4])
View(calidadAguaAptaProvincia2016)


calidadAguaNoAptaProvincia2016<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2016)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo`,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - No apta para el consumo con riesgo para la salud`)
calidadAguaNoAptaProvincia2016$NoAptosTotal = rowSums (calidadAguaNoAptaProvincia2016[ ,3:4])
View(calidadAguaNoAptaProvincia2016)

calidadAguaSinAnalisisProvincia2016<-calidad_de_las_aguas_de_consumo_humano%>%
  dplyr::filter(.data = ., Año==2016)%>%
  select(Año,Provincia,`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`)
View(calidadAguaSinAnalisisProvincia2016)



graficaAptos2019<-ggplot(data = calidadAguaAptaProvincia2019, aes(x = reorder(Provincia,-AptosTotal), y = AptosTotal)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "green")+
  labs( title = "CALIFICACION AGUAS APTAS 2019 CYL",
        x = "Provincias",
        y = "Numero Aptos Total")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaAptos2019

graficaNoAptos2019<-ggplot(data = calidadAguaNoAptaProvincia2019, aes(x = reorder(Provincia,-NoAptosTotal), y = NoAptosTotal)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "red")+
  labs( title = "CALIFICACION AGUAS NO APTAS 2019 CYL",
        x = "Provincias",
        y = "Numero No Aptos Total")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaNoAptos2019

graficaSinCalificar2019<-ggplot(data = calidadAguaSinAnalisisProvincia2019, aes(x = reorder(Provincia,-`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`), y = `Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "grey")+
  labs( title = "AGUAS SIN CALIFICAR 2019 CYL",
        x = "Provincias",
        y = "Numero Sin Calificación")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaSinCalificar2019



graficaAptos2018<-ggplot(data = calidadAguaAptaProvincia2018, aes(x = reorder(Provincia,-AptosTotal), y = AptosTotal)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "green")+
  labs( title = "CALIFICACION AGUAS APTAS 2018 CYL",
        x = "Provincias",
        y = "Numero Aptos Total")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaAptos2018

graficaNoAptos2018<-ggplot(data = calidadAguaNoAptaProvincia2018, aes(x = reorder(Provincia,-NoAptosTotal), y = NoAptosTotal)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "red")+
  labs( title = "CALIFICACION AGUAS NO APTAS 2018 CYL",
        x = "Provincias",
        y = "Numero No Aptos Total")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaNoAptos2018

graficaSinCalificar2018<-ggplot(data = calidadAguaSinAnalisisProvincia2018, aes(x = reorder(Provincia,-`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`), y = `Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "grey")+
  labs( title = "AGUAS SIN CALIFICAR 2018 CYL",
        x = "Provincias",
        y = "Numero Sin Calificación")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaSinCalificar2018



graficaAptos2017<-ggplot(data = calidadAguaAptaProvincia2017, aes(x = reorder(Provincia,-AptosTotal), y = AptosTotal)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "green")+
  labs( title = "CALIFICACION AGUAS APTAS 2017 CYL",
        x = "Provincias",
        y = "Numero Aptos Total")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaAptos2017

graficaNoAptos2017<-ggplot(data = calidadAguaNoAptaProvincia2017, aes(x = reorder(Provincia,-NoAptosTotal), y = NoAptosTotal)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "red")+
  labs( title = "CALIFICACION AGUAS NO APTAS 2017 CYL",
        x = "Provincias",
        y = "Numero No Aptos Total")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaNoAptos2017

graficaSinCalificar2017<-ggplot(data = calidadAguaSinAnalisisProvincia2017, aes(x = reorder(Provincia,-`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`), y = `Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "grey")+
  labs( title = "AGUAS SIN CALIFICAR 2017 CYL",
        x = "Provincias",
        y = "Numero Sin Calificación")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaSinCalificar2017



graficaAptos2016<-ggplot(data = calidadAguaAptaProvincia2016, aes(x = reorder(Provincia,-AptosTotal), y = AptosTotal)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "green")+
  labs( title = "CALIFICACION AGUAS APTAS 2016 CYL",
        x = "Provincias",
        y = "Numero Aptos Total")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaAptos2016

graficaNoAptos2016<-ggplot(data = calidadAguaNoAptaProvincia2016, aes(x = reorder(Provincia,-NoAptosTotal), y = NoAptosTotal)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "red")+
  labs( title = "CALIFICACION AGUAS NO APTAS 2016 CYL",
        x = "Provincias",
        y = "Numero No Aptos Total")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaNoAptos2016

graficaSinCalificar2016<-ggplot(data = calidadAguaSinAnalisisProvincia2016, aes(x = reorder(Provincia,-`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`), y = `Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Análisis sin calificación`)) + 
  geom_bar(stat="identity", position="dodge", colour ="black", fill = "grey")+
  labs( title = "AGUAS SIN CALIFICAR 2016 CYL",
        x = "Provincias",
        y = "Numero Sin Calificación")+
  theme (plot.title = element_text(size=rel(2),   color="black")) 
graficaSinCalificar2016