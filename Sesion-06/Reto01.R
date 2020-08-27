library(plotly)
library(reshape)
library(dplyr)
library(ggplot2)

############ Reto 1 ##################

# Lee el archivo Metro_Interstate_Traffic_Volume.csv
# Ve la estructura del dataframe
# Encuentra la matriz de correlación de las variabes 
# numéricas continuas 'temp','rain_1h','snow_1h','clouds_all','traffic_volume'.
# Crea una visualización en dónde las correlaciones 
# más fuertes tengan color negro y las correlaciones 
# más débiles tengan color blanco
# Viendo la gráfica que creaste o la matriz de correlación,
# responde: ¿Cuáles son las dos variables más correlacionadas? 
# ¿La correlación es positiva o negativa?

df_metro <- read.csv('https://raw.githubusercontent.com/analuisaortega/BEDU-R-2020/master/Data/Metro_Interstate_Traffic_Volume.csv')

str(df_metro)

df_metro %>% 
  select(temp, rain_1h, snow_1h, clouds_all, traffic_volume) %>% 
  cor() %>% 
  melt() %>% 
  ggplot(aes(X1,X2)) + 
  geom_tile(aes(fill = value)) +
  ggtitle('Matriz de correlación') +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_gradient(low = 'white', high = 'black') 
# las variables con correlación más fuerte son temp y traffic_volumne
# y es positiva

# Reto Bonus:
# Cambiar de gráfico de ggplot2 a gráfico interactivo de plotly
my_plot <- df_metro %>% 
  select(temp, rain_1h, snow_1h, clouds_all, traffic_volume) %>% 
  cor() %>% 
  melt() %>% 
  ggplot(aes(X1,X2)) + 
  geom_tile(aes(fill = value)) +
  ggtitle('Matriz de correlación') +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_gradient(low = 'white', high = 'black') 

ggplotly(my_plot)

######### Reto 2 ##############
# Ve la estructura del dataframe (es factor?)
# ¿Cuáles son los niveles de la columna weather_main?
# Crea un histograma para la variable traffic_volume
# Agrega formato al histograma: 
# titulo, nombre a los ejes, color de barras amarillo
# Utiliza facet_wrap con la variable weather_main 
# para separar los histogramas por tipo de clima
str(df_metro)

df_metro$weather_main <- as.factor(df_metro$weather_main)

df_metro %>% 
  ggplot(aes(traffic_volume)) + 
  geom_histogram(colour = 'yellow', 
                 alpha = 0.5, 
                 binwidth = 1) + 
  ggtitle('Histogram for traffic volume') + 
  labs(x = 'Traffic Volume', y = 'Frequency') +
  theme_minimal() +
  facet_wrap('weather_main')

# Reto bonus: pasarlo a gráfico interactivo de ggplotly
my_plot_2 <- df_metro %>% 
  ggplot(aes(traffic_volume)) + 
  geom_histogram(colour = 'black', 
                 fill = 'yellow', 
                 alpha = 0.5, 
                 binwidth = 3) + 
  ggtitle('Histogram for traffic volume') + 
  labs(x = 'Traffic Volume', y = 'Frequency') +
  theme_minimal() +
  facet_wrap('weather_main')

ggplotly(my_plot_2)
