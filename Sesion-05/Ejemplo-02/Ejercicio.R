library(dplyr)

# Leemos dataset

breast.cancer <- read.csv('https://raw.githubusercontent.com/analuisaortega/BEDU-R-2020/master/Data/breast_cancer.csv')

head(breast.cancer)

str(breast.cancer)

unique(breast.cancer$diagnosis)

breast.cancer$diagnosis <- as.factor(breast.cancer$diagnosis)

# Paso 1. Revisamos que no haya na

#### Reto 1: con un ciclo for
####         haz la suma de los na por columnas
####         imprime el resultado

for (k in 1:ncol(breast.cancer)) {
  num_na <- sum(is.na(breast.cancer[ ,k]))
  print(paste('Columna', k, 'tiene', num_na))
}

#### Reto bonus: ifelse en el for para que solo les imprima 
####             el nombre de la columna si tiene valores na
for(k in names(breast.cancer)){
  num_na <- sum(is.na(breast.cancer[ ,k]))
  if (num_na > 0) {
    print(paste(k), 'tiene', num_na, 'valores nulos')
  }
}

# Paso 2. Vemos estructura en general (Identificar tipo de datos)
str(breast.cancer)

# Paso 3. Vemos summary en general
summary(breast.cancer)

# Paso 4. Seleccionamos variables de interes
breast.cancer.filter <- breast.cancer %>% 
                        select(diagnosis,radius_mean,perimeter_mean,
                               radius_worst, perimeter_worst)

# Paso 5. Selecciona una variable numérica continua de breast.cancer.filter
interest.col <- breast.cancer.filter$radius_mean
interest.col

# Paso 6. Encuentra la media y mediana
print(paste('Promedio:', mean(interest.col)))
print(paste('Mediana:', median(interest.col)))


## Medidas de dispersión
breast.cancer.filter

# Paso 1. Encontrar varianza
var.radius <- var(interest.col)
print(var.radius)
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

# cuartiles: 1q: 25%, 2q: 50% = mediana, 3q: 75%
# deciles: 1d: 10%, ... 9d: 90%
# percentiles: 1%, 2%, ..., 99%, 100%

# Paso 3. Encontramos cuartiles
quant.col <- quantile(breast.cancer$radius_mean)
print(quant.col)

# Paso 3. Encontramos deciles
quant.col <- quantile(breast.cancer$perimeter_mean, seq(0,1,by = 0.1))
print(quant.col)

#### Reto 2: 
#### Encontrar los percentiles para la columna de perimiter_mean
quantile(breast.cancer.filter$perimeter_mean, seq(0,1,by = 0.01))

#### Reto 3: 
#### ¿En dónde se están acumulando el 92% de los datos?
quantile(breast.cancer.filter$perimeter_mean, .92)

