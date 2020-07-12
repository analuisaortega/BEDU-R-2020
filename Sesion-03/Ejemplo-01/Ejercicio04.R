######################################
########## Fundamentos de R ##########
##########    Sesión 01     ##########
##########  Ejercicio 04    ##########
######################################

# Para ver la ruta de dónde estamos trabajando
getwd()

setwd('C:/Users/AnaLuisaOrtegaRenter/Desktop/Cursos-Al/BEDU_June2020/Repository/Programming-Statistics-with-R/Data')
# Alternativa: Session -> Set Working Directory -> Choose Directory

df <- read.csv('Metro_Interstate_Traffic_Volume.csv')
# Alternativa: Import Dataset -> From Text(base) 

dfgit <- read.csv('https://raw.githubusercontent.com/analuisaortega/Programming-Statistics-with-R/master/Data/Metro_Interstate_Traffic_Volume.csv')
head(dfgit)

# Podemos quedarnos solamente con las primeras 20 observaciones
dataframe.traffic.20 <- head(dataframe.traffic, 20)

# Podemos guardarla como csv en local
write.csv(dataframe.traffic.20, file = 'Short_DF_Example.csv')
 




