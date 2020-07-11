[`Estadística con R`](../Readme.md) > `Sesión 01: Propedéutico de R` 

## Data Frames

### OBJETIVO

Al final de el `Ejemplo-02` serás capaz de:
- Crear un dataframe
- Ver las características de un dataframe
- Accesar a los elementos de un dataframe
- Agregar datos a un dataframe
- Transformar una columna 
- Agregar o eliminar columnas

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash
5. Completar el `Ejemplo-01` 
6. Completar el `Reto-01`

### TEORÍA: DATAFRAMES

#### PARTE 1. ¿CÓMO CREAR UN DATA FRAME?

Un dataframe es un objeto que tiene filas y columnas. Las columnas de un dataframe representan las variables mientras que los renglones de un dataframe representan las observaciones.

Por ejemplo, si tuvieramos la clave, el grado y el sexo de tres personas, podríamos representar la información en la siguiente tabla:

| clave | grado | sexo|
| ------|-------| ----|
|  1    | 4 	|  F  |
|  2    | 4    	|  M  |
|  3    | 5     |  M  |

En este caso tenemos 3 columnas: clave, grado y sexo. Además, tenemos 3 renglones, que cada uno representa a una persona diferente. Pasemos esta información a un dataframe.

```r
df.example <- data.frame(clave = c(1,2,3),
                             grado = c(4,4,5),
                             sexo = c('F','M','M'))
df.example
```

#### PARTE 2. ¿CÓMO VER LAS CARACTERÍSTICAS DE UN DATAFRAME?

En la mayoría de los casos durante este curso (y en la vida en general) nos enfrentaremos a información que no tenemos que crear manualmente. 

En R, tenemos datos precargados los cuales podremos utilizar para nuestros análisis pero también podremos cargar los datos de alguna otra fuente, por ejemplo, archivos de internet o archivos que tenemos en nuestra computadora. 

Hasta ahora, no hemos aprendido cómo cargar los datos de distintas fuentes, por lo que trabajaremos con el dataframe precargado más popular de R: **iris**. Para poder ver los renglones y columnas que tiene **iris**, basta con correr la instruccion `iris`, al igual que se hizo en el **Prework**.

Cuando tenemos un dataframe nuevo por trabajar, queremos a empezar a responder preguntas:
- ¿Cuántos renglones tiene iris?
- ¿Cuántas columnas tiene iris?
- ¿Cuáles son las dimensiones de iris?
- ¿Cuáles son las columnas de iris?

```r
nrow(iris)
ncol(iris)
dim(iris)
names(iris)

print(paste('El número de columnas de nuestro dataframe es:', ncol(iris)))
print(paste('El número de renglones de nuesrtro dataframe es:', nrow(iris)))
```

#### PARTE 3. ¿CÓMO VEO LOS ELEMENTOS, COLUMNAS O RENGLONES DE UN DATAFRAME?

Ya que hemos respondido las preguntas básicas para todo dataframe, nos interesa aprender a accesar a los elementos del dataframe. Esto se hace utilizando especificando los renglones y columnas de interés, haciendo algo cómo `df[renglon, columna]`. 

Tenemos distintas opciones para poder accesar a los datos:

1. Solamente nos interesa el dato que esta en una ubicación en particular. 
```r
# Primer renglón, primer columna
iris[1,1]
# Tercer renglón, primer columna
iris[3,1]
# Tercer renglón, segunda columna
iris[3,2]

```
2. Nos interesa un renglón (o renglones) en particular.
```r
# El primer renglón utilizando el número de renglón que es
iris[1,]
# Los tres primeros renglones 
iris[1:3,]
# Todos los renglones menos el primero
iris[-1,]

```
3. Nos interesa una columna (o columnas) en particular
```r
# La primer columna por el número de columna que es
iris[,1]
# La primer columna por el nombre de columna que es
iris[,'Sepal.Length']
# La primer columna por el nombre de columna que es
iris$Sepal.Length
# Las primeras dos columnas 
iris[,1:2]
# Todas las columnas menos la primera
iris[,-1]
```
4. Nos interesan los datos según el renglón y la columna en la que están.
```r
# Primer renglón, dos primeras columnas
iris[1, 1:2]
iris[1, c('Sepal.Length', 'Sepal.Width')]

# Primeros tres renglones, dos últimas columnas
iris[1:3, 2:3]

# Primeros tres renglones, primer y última columna
iris[1:3, c(1,3)]
iris[1:3, c('Sepal.Length', 'Petal.Length')]
```

#### PARTE 4. AGREGAR RENGLONES Y COLUMNAS A UN DATAFRAME

Existen dos funciones  que nos permiten agregar un renglón `rbind()` o una columna `cbind()` a un dataframe existente. Es importante cuidar que el tipo de dato que estemos agregando sea consistente al tipo de dato de la columna del dataframe existente.

```r
# Para agreger un nuevo renglón utilizamos rbind
iris.parte2 <- data.frame(Sepal.Length = c(6,7),
                                    Sepal.Width = c(2.5,3.5),
                                    Petal.Length = c(3,3),
                                    Petal.Width = c(0.01,2.08),
                                    Species = c('virginica','versicolor'))
iris
iris.parte2

df.iris <- rbind(iris, iris.parte2)
df.iris

# Para agregar una columna 
df.example.newcolumn <- data.frame(calificacion = c(9,6,10))
df.example.newcolumn
df.example <- cbind(df.example, df.example.newcolumn)
df.example

```

#### PARTE 6. ¿CÓMO TRANSFORMO, AGREGO O ELIMINO UNA COLUMNA?

Muchas veces, necesitamos hacer operaciones sobre columnas completas, siguiendo la misma idea de cuándo declaramos y manipulamos vectores. En las columnas de los dataframes, es fácil transformar una columna y reasignar esta transformación a la vieja columna o a una nueva. Para transformar o agregar una columna, tenemos que asignar los cambios a la columna `df$col`, donde si col ya existe, se reescriben los nuevos valores y si no existe, crear una nueva columna con el nombre col. 

Para eliminar una columna, tenemos que seguir la misma lógica pero en lugar de transformar la columna, la asignamos a `NULL`.

```r

# Para transformar una columna
df.example$calificacion <- df.example$calificacion + 0.5
df.example

# Para transformar una columna y agregar la transformación como una nueva
df.example$nueva_col <- (df.example$calificacion + 8)/2
df.example

# Para eliminar una columna
df.example$grado <- NULL
df.example


```

#### PARTE 7. FUNCIONES ÚTILES CON DATAFRAMES

Los dataframes, al ser objetos tan importantes en R, tienen muchas funciones para utilizar. Cuándo necesitamos ver solo una parte del dataframe, podemos utilizar `head()` o `tail()`. En cambio, cuándo necesitamos ver los distintos elementos de una columna, podemos utilizar la variable `unique()`. 
```r 
# Para ver los primeros 8 elementos del dataframe
head(iris, 8)

# Para ver los ultimos 6 elementos del dataframe
tail(iris)

# Ver los distintos elementos de una columna
unique(iris$Species)

# Cambiar los nombres de las columnas
names(iris) 
names(iris) <- c("Longitud.Sepalo","Ancho.Sepalo","Longitud.Petalo","Ancho.Petalo","Especies")

head(iris)
```

