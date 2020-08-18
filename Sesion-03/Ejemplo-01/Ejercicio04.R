######################################
########## Fundamentos de R ##########
##########    Sesión 03     ##########
##########  Ejercicio 01    ##########
######################################

# Lectura desde archivo raw de git
df <- read.csv('https://raw.githubusercontent.com/analuisaortega/BEDU-R-2020/master/Data/Metro_Interstate_Traffic_Volume.csv')
head(df)

df_2 <- read.csv("C:/Users/AnaLuisaOrtegaRenter/Desktop/Cursos-Al/BEDU-R-2020/BEDU-R-2020/Data/Metro_Interstate_Traffic_Volume.csv")
# Alternativa: Import Dataset -> From Text(base) 

getwd()

setwd("C:/Users/AnaLuisaOrtegaRenter/Desktop/Cursos-Al/BEDU-R-2020/BEDU-R-2020/Data")

getwd()

df <- read.csv('Metro_Interstate_Traffic_Volume.csv')

# Podemos quedarnos solamente con las primeras 20 observaciones
data_20 <- head(df, 20)

# Podemos guardarla como csv en local
write.csv(data_20, file = 'metro_data_170820.csv')

getwd()





