# install.packages('ggplot2')

library(ggplot2)
library(dplyr)

head(iris)

ggplot(iris, aes(x = Petal.Length)) + 
  geom_histogram()

# Reto: Crear un dotplot de la columna Sepal.Length
# del dataset iris
ggplot(iris, aes(Sepal.Length)) + 
  geom_dotplot() 

# Reto: Crear un scatterplot (geom_point()) con las columnas
# Petal.Length y Petal.Width del dataset de iris 
ggplot(iris, 
       aes(x = Petal.Length, y = Petal.Width, colour = Species)) +
  geom_point(alpha = 0.5, shape = 15, size = 1) +
  theme_minimal() +
  xlim(0,5) +
  ylim(0,1.5) +
  xlab('Largo de Petalo') + 
  ylab('Ancho de Petalo')+
  ggtitle("Relación entre ancho y largo del Petalo")  +
  scale_color_manual(values=c("navy", "red", "green")) +
  labs(title = 'Titulo nuevo', x = 'largo', y ='ancho' ) 
  

  
# Reto: cambiar de shape en el geom_point
# Reto: recortar el eje y de 0 a 1.5



