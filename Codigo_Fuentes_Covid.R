library(readr)
library(dplyr)
<<<<<<< HEAD:Codigo_Fuentes_Covid.R
Analisis_aguas_residuales_covid <- read_delim("C:/Users/Usuario/Desktop/Universidad/Asignaturas/3 Curso/5 Semestre/Fuentes de datos biomédicas y web semántica/Practicas/Seminario/Bases_de_datos/analisis-aguas-residuales-covid.csv", 
                                              delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(Analisis_aguas_residuales_covid)
levels(factor(Analisis_aguas_residuales_covid$`RESULTADO SARS-COV-2`))
levels(factor(Analisis_aguas_residuales_covid$VARIACIÓN))
Analisis_aguas_residuales_covid <- rename(.data = Analisis_aguas_residuales_covid, Resultados = `RESULTADO SARS-COV-2`, Variacion = VARIACIÓN)

Analisis_aguas_residuales_covid <- Analisis_aguas_residuales_covid%>%
  mutate(Resultados = replace(Resultados, Resultados=="POSITIVO", 1))%>%
  mutate(Resultados = replace(Resultados, Resultados=="NEGATIVO", 0))%>%
  mutate(Resultados = replace(Resultados, Resultados=="PRESUNTO POSITIVO", 2))%>%
  mutate(Variacion = replace(Variacion, Variacion=="Aumento", 2))%>%
  mutate(Variacion = replace(Variacion, Variacion=="Disminución", -1))%>%
  mutate(Variacion = replace(Variacion, Variacion=="Estable", 0))%>%
  mutate(Variacion = replace(Variacion, Variacion=="S/D", 4))%>%
  mutate(Variacion = replace(Variacion, Variacion=="Aumento significativo", 3))%>%
  mutate(Variacion = replace(Variacion, Variacion=="Disminución significativa", -2))%>%
  mutate(Variacion = replace(Variacion, Variacion=="Primera determinación", 1))

levels(factor(Analisis_aguas_residuales_covid$Resultados))
levels(factor(Analisis_aguas_residuales_covid$Variacion))
levels(factor(Analisis_aguas_residuales_covid$EDAR))

library(ggplot2)
ggplot(data = Analisis_aguas_residuales_covid, aes(x = Variacion))+
  geom_bar()

=======
>>>>>>> 8c22f2a428a207c71b55d9772d30ec5d5ba26926:Codigo_Fuentes.R

calidad_de_las_aguas_de_consumo_humano <- read_delim("C:/Users/ignac/Desktop/calidad-de-las-aguas-de-consumo-humano.csv", 
                                                     delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(calidad_de_las_aguas_de_consumo_humano)