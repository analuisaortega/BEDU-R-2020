# Histograma de 01_hello 

?faithful

head(faithful)

x <- faithful$waiting
#par(mar = rep(2, 4))
bins = seq(min(x), max(x), length.out = 20)

hist(x, 
     breaks = bins,
     col = "#75AADB", 
     border = "white",
     xlab = "Waiting time to next eruption (in mins)",
     main = "Histogram of waiting times")


# Parte 1: Estructura de una Shiny Web Apps
# install.packages("shiny")
library(shiny)
runExample("10_download")     # an histogram


# Reto 1: correr un ejemplo precargado de Shiny
# e identifiquen los 4 elementos

