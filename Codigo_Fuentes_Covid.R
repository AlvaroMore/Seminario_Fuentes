library(readr)
library(dplyr)

Analisis_aguas_residuales_covid <- read_delim("C:/Users/Usuario/Desktop/Universidad/Asignaturas/3 Curso/5 Semestre/Fuentes de datos biomédicas y web semántica/Practicas/Seminario/Bases_de_datos/analisis-aguas-residuales-covid.csv", 
                                              delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(Analisis_aguas_residuales_covid)
levels(factor(Analisis_aguas_residuales_covid$`RESULTADO SARS-COV-2`))
levels(factor(Analisis_aguas_residuales_covid$VARIACIÓN))
Analisis_aguas_residuales_covid <- rename(.data = Analisis_aguas_residuales_covid, Fecha = `FECHA RECOGIDA MUESTRA`, Resultados = `RESULTADO SARS-COV-2`, Variacion = VARIACIÓN)

levels(factor(Analisis_aguas_residuales_covid$Resultados))
levels(factor(Analisis_aguas_residuales_covid$Variacion))
levels(factor(Analisis_aguas_residuales_covid$EDAR))

Leon <- Analisis_aguas_residuales_covid%>%
  filter(EDAR=="COLECTOR LEÓN")
Zamora<- Analisis_aguas_residuales_covid%>%
  filter(EDAR=="EDAR ZAMORA")
Salamanca<- Analisis_aguas_residuales_covid%>%
  filter(EDAR=="EDAR SALAMANCA")
Palencia<- Analisis_aguas_residuales_covid%>%
  filter(EDAR=="EDAR PALENCIA")
Valladolid<- Analisis_aguas_residuales_covid%>%
  filter(EDAR=="EDAR VALLADOLID (VATAR)")
Avila<- Analisis_aguas_residuales_covid%>%
  filter(EDAR=="EDAR ÁVILA")
Burgos<- Analisis_aguas_residuales_covid%>%
  filter(EDAR=="EDAR BURGOS")
Segovia<- Analisis_aguas_residuales_covid%>%
  filter(EDAR=="EDAR SEGOVIA (VATAR)")
Soria<- Analisis_aguas_residuales_covid%>%
  filter(EDAR=="EDAR SORIA (VATAR)")
View(Burgos)
library(ggplot2)
GraficaLeon <- ggplot(data = Leon, aes(x = Fecha, y = Resultados))+
  ggtitle("Analisis aguas residuales Leon")+
  geom_point(aes(colour = Variacion))
GraficaZamora <- ggplot(data = Zamora, aes(x = Fecha, y = Resultados))+
  ggtitle("Analisis aguas residuales Zamora")+
  geom_point(aes(colour = Variacion))
GraficaSalamanca <- ggplot(data = Salamanca, aes(x = Fecha, y = Resultados))+
  ggtitle("Analisis aguas residuales Salamanca")+
  geom_point(aes(colour = Variacion))
GraficaPalencia <- ggplot(data = Palencia, aes(x = Fecha, y = Resultados))+
  ggtitle("Analisis aguas residuales Palencia")+
  geom_point(aes(colour = Variacion))
GraficaValladolid <- ggplot(data = Valladolid, aes(x = Fecha, y = Resultados))+
  ggtitle("Analisis aguas residuales Valladolid")+
  geom_point(aes(colour = Variacion))
GraficaAvila <- ggplot(data = Avila, aes(x = Fecha, y = Resultados))+
  ggtitle("Analisis aguas residuales Avila")+
  geom_point(aes(colour = Variacion))
GraficaBurgos <- ggplot(data = Burgos, aes(x = Fecha, y = Resultados))+
  ggtitle("Analisis aguas residuales Burgos")+
  geom_point(aes(colour = Variacion))
GraficaSegovia <- ggplot(data = Segovia, aes(x = Fecha, y = Resultados))+
  ggtitle("Analisis aguas residuales Segovia")+
  geom_point(aes(colour = Variacion))
GraficaSoria <- ggplot(data = Soria, aes(x = Fecha, y = Resultados))+
  ggtitle("Analisis aguas residuales Soria")+
  geom_point(aes(colour = Variacion))




