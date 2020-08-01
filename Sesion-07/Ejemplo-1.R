# Cargamos paquetes
library(dplyr)
library(ggplot2)

#Leemos archivo de breast_cancer
breast.cancer <- read.csv('https://raw.githubusercontent.com/analuisaortega/BEDU-R-2020/master/Data/breast_cancer.csv')

# Vemos la estructura
str(breast.cancer)

# Obtenemos la mediana de la variable radius_mean
median.perimeter <- median(breast.cancer$perimeter_mean)
mean.perimeter <- mean(breast.cancer$perimeter_mean)

# graficamos el histograma y densidad de la variable radius_mean

breast.cancer %>% ggplot(aes(perimeter_mean)) + 
  geom_histogram(colour = 'black', 
                 fill = 'blue', 
                 alpha = 0.5, 
                 binwidth = 3) + 
  ggtitle('Histogram for perimeter mean') + 
  labs(x = 'Radius Mean', y = 'Freq')+
  theme_minimal() +
  geom_vline(xintercept = median.perimeter, 
             linetype="dashed", 
             color = "red") + 
  geom_vline(xintercept = mean.perimeter,
             color = 'orange') +
  facet_grid(diagnosis~.) 

# Reto 00: Agregar 2 capas de texto donde, con color rojo pongan
# 'mean' y con color naranja pongan 'median'


str(breast.cancer)

summary(breast.cancer$symmetry_worst)

col_cat <- breast.cancer$symmetry_worst

breast.cancer$category <- ifelse(col_cat <= mean(col_cat),
                                 'Bajo', 
                                 'Alto')

# Reto: Crear 3 variables donde tengan 1q, 2q, 3q de symmetry worst.
cut1 <- quantile(col_cat, c(0.25))
cut2 <- quantile(col_cat, c(0.5) )
cut3 <- quantile(col_cat, c(0.75))

breast.cancer$category4 <- ifelse(col_cat <= cut1,
       'Bajo',
        ifelse(col_cat <= cut2, 
               'Medio Bajo',
               ifelse(col_cat <= cut3, 
                      'Medio Alto',
                      'Alto'
                      )))

breast.cancer %>% ggplot(aes(perimeter_mean)) + 
  geom_histogram(colour = 'black', 
                 fill = 'blue', 
                 alpha = 0.5, 
                 binwidth = 3) + 
  ggtitle('Histogram for perimeter mean') + 
  labs(x = 'Radius Mean', y = 'Freq')+
  theme_minimal() +
  facet_grid(diagnosis~category4)

?mpg

head(mpg)

str(mpg)

mpg %>% ggplot(aes(x = displ, y = hwy, color = drv)) + 
          geom_point()

# Reto: crear esta grafica para cada distinto cilindraje (cyl)
