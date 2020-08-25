# install.packages('ggplot2')

library(ggplot2)
library(dplyr)

head(iris)

ggplot(iris, aes(Petal.Length)) + 
  geom_histogram(bins = 10, 
                 color = 'blue',
                 fill = 'orange',
                 alpha = 0.2) +
  theme_minimal()


# Reto: Crear un gráfico tipo dotplot de la columna
# Sepal.Length del dataset iris. Agregar una capa donde
# pongan el titulo "Dotplot de Sepal Length" y otra capa
# con el tema de su preferencia.
