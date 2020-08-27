# Cargamos paquetes
# install.packages('reshape')
# install.packages('plotly')
library(plotly)
library(reshape)
library(dplyr)
library(ggplot2)

#Leemos archivo de breast_cancer
breast.cancer <- read.csv('https://raw.githubusercontent.com/analuisaortega/BEDU-R-2020/master/Data/breast_cancer.csv')

# Vemos la estructura
str(breast.cancer)

# Change diagnosis to factor
breast.cancer$diagnosis <- as.factor(breast.cancer$diagnosis)

# Quitamos las columnas no numéricas
breast.cancer.num <- breast.cancer %>% select(-c(1,2,3))

str(breast.cancer.num)

cor(breast.cancer.num$texture_mean, breast.cancer.num$radius_mean)

cor(breast.cancer.num)


# Calculamos la matriz de correlación y le damos formato para graficar
cor.df <- melt(cor(breast.cancer.num))
head(cor.df)

############ HEAT MAP ####################

# Creamos gráfico para visualizar matriz de correlación
plot_1 <- breast.cancer %>% 
             select(-c(1,2,3)) %>% 
             cor() %>% 
             melt() %>% 
             ggplot(aes(X1,X2)) + 
               geom_tile(aes(fill = value)) +
             ggtitle('Matriz de correlación') +
             theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
             scale_fill_gradient(low = 'white', high = 'red') 

plot_1

ggplotly(plot_1)

############ HISTOGRAM ####################

# Obtenemos la mediana de la variable perimeter_mean
median.per <- median(breast.cancer$perimeter_mean)
mean.per <- mean(breast.cancer$perimeter_mean)

# graficamos el histograma y densidad de la variable radius_mean
breast.cancer %>% 
  ggplot(aes(perimeter_mean)) + 
  geom_histogram(colour = 'black', 
                 fill = 'blue', 
                 alpha = 0.5, 
                 binwidth = 3) + 
  ggtitle('Histogram for perimeter mean') + 
  labs(x = 'Perimeter Mean', y = 'Frequency') +
  theme_minimal() +
  geom_vline(xintercept = median.per,
             linetype="dashed", 
             color = "red") +
  geom_vline(xintercept = mean.per,
             linetype="dashed", 
             color = "orange") +
  annotate("text",
           x = 140,
           y = 30,
           label = 'media',
           color = 'orange') +
  annotate("text",
           x = 140,
           y = 40,
           label = 'mediana',
           color = 'red') +
  facet_wrap('diagnosis')


############ SCATTER PLOT ####################
breast.cancer %>% 
  ggplot( aes(x = radius_mean,
              y = texture_mean,
              colour=diagnosis)) + 
  geom_point() +
  ggtitle('Relacion Radius y Texture')+
  theme_minimal() 

# Selecciona las dos columnas con mayor correlación (Las encontraste en el Reto-01)
# Crea un ScatterPlot de estas dos variables, 
# además agrega color por tipo de clima distinto
# Al scatterplot, agregale una capa con xlim(200,325), ¿qué pasa?
