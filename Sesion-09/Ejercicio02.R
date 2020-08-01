# Dataset cars: Speed and Stopping Distances of Cars
library(ggplot2)
library(dplyr)

cars

cars %>% head(5)

str(cars)

cor(cars)

# Vemos una linea que suaviza la relación
scatter.smooth(x=cars$speed, 
               y=cars$dist,
               main="Relacion distancia y velocidad")

# Para "Error in plot.new() : figure margins too large"
# par(mar = rep(2, 4))

# dist = b_0 + b_1*speed

# Ajustamos un modelo de regresión lineal
# en general: lm(y ~ x, data)

modlin <- lm(dist ~ speed, data = cars)

# dist = -17.579 + 3.932*speed
print(modlin)
summary(modlin)

b_0 <- modlin$coefficients[1]
b_1 <- modlin$coefficients[2]

# y = b_0 + b_1*x 

# para una nueva velocidad 
x_new <- 26
y_new <- b_0 + b_1*x_new
print(y_new)

# funcion para predict
predict(modlin, data.frame(speed = c(26, 30,45, 10, 49)))

# Reto: agregar una capa donde pinten la linea resultante de lm
ggplot(cars, aes(x = speed, y = dist)) + 
  geom_point() + 
  theme_minimal() +
  geom_abline(intercept = b_0, slope = b_1) +
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle('Linear Regression')

#######################

# y = b_0 + b_1*x_1 + b_2*x_2 + b_3*x_3

head(longley)

cor(longley)

df <- longley %>% select(GNP, Employed)

# 1963: no hay numero de personas empleadas (Employed)

cor(df$GNP, df$Employed)

# Reto: ajustar un modelo de regresion lineal al dataset longley
# donde y = Employed, x = GNP 
# hacer predict con x = 75
# graficar con plotly los puntos y la linea resultante

scatter.smooth(df$GNP, df$Employed)

rls <- lm(Employed ~ GNP, data = df)

b0 <- rls$coefficients[1]
b1 <- rls$coefficients[2]

x_nueva <- 75
b0 + b1*x_nueva

head(longley)
# ---------------------------------------

# GNP y Armed.Forces para dar una prediccion para Employed

# y = b_0 + b_1*x_1 + b_2*x_2 * b_3*x_3 + b_4*x_4

lm(Employed ~ GNP, data = longley) # Simple

lm_longley <- lm(Employed ~ GNP + Armed.Forces + Unemployed + Population, 
                 data = longley) # Multiple con variables x 

summary(lm_longley)

lm_longley$coefficients

# Ajustar un modelo de regresion lineal multiple donde utilicen
# todas las variables, menos Employed para crear un modelo lineal

# dar una prediccion 
# para x1= 120, x2= 500 ,x3 = 500, x4 = 300, x5= 100, x6= 1960

lm_longley <- lm(Employed ~ ., data = longley) # Multiple con todas las variables como x

predict(lm_longley,
        data.frame(GNP.deflator = 120,GNP = 500,Unemployed = 500,Armed.Forces = 300,Population = 100,Year = 1960))
