library(dplyr)
library(ggplot2)

#Leemos archivo de breast_cancer
breast.cancer <- read.csv('https://raw.githubusercontent.com/analuisaortega/BEDU-R-2020/master/Data/breast_cancer.csv')

# Vemos la estructura
str(breast.cancer)

# Change diagnosis to factor
breast.cancer$diagnosis <- as.factor(breast.cancer$diagnosis)


# Reto 1: Encontrar la matriz de correlación de variables numérica del dataframe de breast.cancer
# Reto 2: Crear un scatter plot entre las variables radius_mean (x) y concave_points_mean (y)
# Reto 3: Ajustar una regresión lineal simple para predecir concave_points_mean (y) dado radius_mean (x)
#         Guardar el modelo como lsr_cancer
#         Extraer b0, b1 
#         Completar la frase: "a una unidad adicional de ____ aumenta en ___ la variable ______ "




# Quitamos las columnas no numéricas
breast.cancer.num <- breast.cancer %>% select(-c(1,2,3))

cor(breast.cancer.num)

# Reto 2: Crear un scatter plot entre las variables radius_mean (x) y concave_points_mean (y)
breast.cancer %>% 
  ggplot( aes(x = radius_mean,
              y = concave_points_mean)) + 
  geom_point() +
  ggtitle('Relacion Radius y Concave Means')+
  theme_minimal() 

# Reto 3: Ajustar una regresión lineal simple para predecir concave_points_mean (y) dado radius_mean (x)
#         Guardar el modelo como lsr_cancer
lsr_cancer <- lm(concave_points_mean ~ radius_mean, breast.cancer)
b0 <- lsr_cancer$coefficients[1]
b1 <- lsr_cancer$coefficients[2]

xnew <- 20
print(b0+b1*xnew)

# Utilizar la función predict para hacer una predicción para nuevos radius_mean: c(1,2,3,4)
predict(lsr_cancer , data.frame(radius_mean = c(20,24,1)))

# Pintar el modelo resultante
breast.cancer %>% 
  ggplot( aes(x = radius_mean,
              y = concave_points_mean)) + 
  geom_point() +
  theme_minimal() +
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle('Linear Regression')

#  geom_smooth(method = "lm", se = FALSE) +
#  geom_abline(intercept = b0, slope = b1)
