# Leemos dataset

breast.cancer <- read.csv('https://raw.githubusercontent.com/analuisaortega/BEDU-R-2020/master/Data/breast_cancer.csv')

head(breast.cancer)

str(breast.cancer)

unique(breast.cancer$diagnosis)

# Buscar los valores
sum(is.na(breast.cancer[ , 1]))

# Reto 1: con un ciclo for
#         haz la suma de los na por columnas e imprime el resultado
for (i in 1:ncol(breast.cancer)) {
  print(sum(is.na(breast.cancer[,i])))
}

# Cambiamos el nombre de las columnas
names(breast.cancer.filter)

names(breast.cancer)[1] <- c('contador')

ncol(breast.cancer)

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

# Reto 1: Buscar en google el nombre de la función en el paquete modeest
#         que nos da la moda en R
#         Encuentra la moda

# install.packages('modeest')
library(modeest)
mlv(interest.col, method = 'mfv')


#### Medidas de dispersión
breast.cancer.filter

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

# Paso 3. Encontramos cuartiles
quant.col <- quantile(breast.cancer$radius_mean)
quant.col

# Paso 3. Encontramos deciles
quant.col <- quantile(breast.cancer$perimeter_mean, 
                      c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1))

# Reto 2: Encontrar los percentiles para la columna de perimiter_mean
quantile(breast.cancer.filter$perimeter_mean, seq(0,1,by=0.01))
# Reto 3: ¿En dónde se están acumulando el 85% de los datos?
quantile(breast.cancer.filter$perimeter_mean, .85)

cut(breast.cancer.filter$perimeter_mean, breaks = quant.col)

# Paso 4. Usamos cut para ver en que decil esta cada observacion
breast.cancer.filter$qcuts <- cut(breast.cancer.filter$perimeter_mean, 
                                  breaks = quant.col)

# Paso 5. Vemos el restultado de nuestro cut
table(breast.cancer.filter$qcuts)

# Paso 6. Vemos nuestro dataframe con una columna nueva
head(breast.cancer.filter,10)

# Paso 7. Summary del dataframe
summary(breast.cancer.filter)
