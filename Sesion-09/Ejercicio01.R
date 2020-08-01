# install.packages('plotly')

library(plotly)
library(dplyr)
library(ggplot2)
# Un volado: {aguila, sol} con p {0.5,0.5}
# Lanzar un dado: {1,2,3,4,5,6} con p {3/6, 1/10, 1/10, 1/10, 1/10, 1/10}

# Distribución Uniforme

x <- runif(n = 1000000, min =0, max = 1)

plt <- data.frame(valores = x) %>% 
  ggplot(aes(x = valores)) + 
  geom_histogram(bins = 100, 
                 fill = 'blue',
                 alpha= 0.6, 
                 color = 'black') + 
  scale_x_continuous(breaks = seq(0,1,0.1), lim = c(0,1)) +
  ggtitle('Simulación de 100,000 valores con dist Uniforme')

ggplotly(plt)

# Reto
# Buscar la documentacion de la funcion ggplotly()
# Cambiar altura y ancho (por default 640/480) a 600 y 400

# Distribución Normal

y <- rnorm(n = 1000000, mean = 0 ,sd = 4)

plt2 <- data.frame(valores = y) %>% 
  ggplot(aes(x = valores)) + 
  geom_histogram(bins = 100, 
                 fill = 'blue',
                 alpha= 0.6, 
                 color = 'black') + 
  scale_x_continuous(breaks = seq(-10,10,1), lim = c(-10,10)) +
  ggtitle('Simulación de 100,000 valores con dist Uniforme')

ggplotly(plt2)

# Reto
# Simular 150,000 numeros aleatorios que sigan
# una distrbucion normal con media = 0, sd = 4, 
# graficarlo y pasarlo a ggplotly

# rbinom




