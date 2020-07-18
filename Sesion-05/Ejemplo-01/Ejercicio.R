# Leemos dataset

breast.cancer <- read.csv('https://raw.githubusercontent.com/analuisaortega/BEDU-R-2020/master/Data/wdbc.data',
                          head = FALSE)

str(breast.cancer)

unique(breast.cancer$V2)

summary(breast.cancer)

sum(is.na(breast.cancer[,1]))

# Reto 1: con un ciclo for
for (i in 1:length(names(breast.cancer))) {
  print(breast.cancer[,i])
}

# Cambiamos el nombre de las columnas

names(breast.cancer)

names(breast.cancer) <- c('id','diagnosis','radius_mean',
                          'texture_mean','perimeter_mean','area_mean',
                          'smoothness_mean','compactenss_mean',
                          'concavity_mean','concave_points_mean',
                          'symmetry_mean','fractal_dimension_mean',
                          'radius_se','texture_se','perimeter_se',
                          'area_se','smoothnsess_se','compactness_se',
                          'concavity_se','concave_points_se','symmetry_se',
                          'fractal_dimension_se','radius_worst',
                          'texture_worst','perimeter_worst','area_worst',
                          'smoothnes_worst','compactness_worst',
                          'concavity_worst','concave_points_worst',
                          'symmetry_worst','fractal_dimension_worst')

# Reto 0: a. Cambiar el nombre de las columnas
#         b. ¿Cuál es el nombre de la variable que tiene el máximo mas alto?



# Inspeccionamos el dataframe
head(breast.cancer)

# Paso 1. Revisamos que no haya na


# Paso 2. Vemos estructura en general (Identificar tipo de datos)
str(breast.cancer)

# Paso 3. Vemos summary en general
summary(breast.cancer)

# Paso 4. Seleccionamos variables de interes
wanted.cols <- c('id','diagnosis','radius_mean','perimeter_mean','radius_worst','perimeter_worst')
breast.cancer.filter <- breast.cancer[ ,wanted.cols]

# Paso 5. Selecciona una variable numérica continua de breast.cancer.filter
interest.col <- breast.cancer.filter$radius_mean

# Paso 6. Encuentra la media y mediana
print(paste('Promedio:', mean(interest.col)))
print(paste('Mediana:', median(interest.col)))

# Reto 1: Buscar en google el nombre de la función que nos da la moda en R

# Pasto 7. Encuentra la moda
library(modeest)
mlv(interest.col)


#### Medidas de dispersión
breast.cancer.filter

# Eliminamos una columna
breast.cancer.filter$id <- NULL

# Paso 1. Encontrar varianza
var.radius <- var(interest.col)
print(var.radius)

round(var.radius,2)
print(paste('Varianza:', round(var.radius,2)))

# Paso 2. Encontrar desviación estándar
sd.radius <- sd(interest.col)
print(paste('Desviación estándar:', round(sd.radius,2)))

# Paso 3. Verificamos relación entre varianza y desviación estÃ¡ndar
sd.radius**2 == var.radius

# Paso 4. Rango
max(interest.col)
min(interest.col)

range.col <- max(interest.col) - min(interest.col)
print(range.col)

## Distribucion

# Paso 3. Encontramos deciles
quant.col <- quantile(breast.cancer$radius_mean, 
                      c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1))

quant.col

# Reto 2: Encontrar los cuartiles para interest.col

cut(interest.col, breaks = quant.col)
interest.col

# Paso 4. Usamos cut para ver en que decil esta cada observacion
breast.cancer.filter$qcuts <- cut(interest.col, breaks = quant.col)

# Paso 5. Vemos el restultado de nuestro cut
table(breast.cancer.filter$qcuts)

# Paso 6. Vemos nuestro dataframe con una columna nueva
head(breast.cancer.filter,10)

# Paso 7. Summary del dataframe
summary(breast.cancer.filter)
