######################################
########## Fundamentos de R ##########
##########    Sesión 01     ##########
##########  Ejercicio 02    ##########
######################################

# Utilizaremos el dataset iris
iris
# Para ver el número de renglones de un dataframe utilizamos nrow
nrow(iris)
# Para ver el número de columnas de un dataframe utilizamos ncol
ncol(iris)
# Para ver el número de renglones y columnas de un dataframe utilizamos dim
dim(iris)

# Utilizamos paste para imprimir texto y el resultado de código
paste('El número de columnas de nuestro dataframe es:', ncol(iris))
paste('El número de renglones de nuesrtro dataframe es:', nrow(iris))

# Para ver el nombre de las columnas utilizamos names
names(iris)

# Para traer un elemento de un dataframe debemos darle la ubicación
# Primer renglón, primer columna
iris[ 1 , 1 ]
# Tercer renglón, segunda columna
iris[3 , 2]


# Para traer renglones completos de un dataframe
# El primer renglón utilizando el número de renglón que es
iris[ c(6,12) , ]
# Los tres primeros renglones 
iris[ 6:12 , ]
# Todos los renglones menos el primero
iris[-1, ]


# Para traer columnas completas de un dataframe
# La primer columna por el número de columna que es
iris[  ,c(1,5) ]
# La primer columna por el nombre de columna que es
iris[  ,c("Sepal.Length",'Sepal.Width')]
# La primer columna por el nombre de columna que es
iris$Sepal.Length
# Las primeras dos columnas 
iris[ ,3:5]


# Para traer elementos segun renglones y columnas
# Primer renglón, dos primeras columnas
iris[1 , 1:2]
iris[1, c('Sepal.Length', 'Sepal.Width')]

# Primeros tres renglones, dos últimas columnas
iris[1:3, 2:3]

# Primeros tres renglones, primer y última columna
iris[1:3, c(1,3)]
iris[1:3, c('Sepal.Length', 'Petal.Length')]

# Para agreger un nuevo renglón utilizamos rbind
iris.parte2 <- data.frame(Sepal.Length = c(6,7),
                          Sepal.Width = c(2.5,3.5),
                          Petal.Length = c(3,3),
                          Petal.Width = c(0.01,2.08),
                          Species = c('virginica','versicolor')
           )

# Pegar dataframes por renglones
df.iris <- rbind(iris, iris.parte2)
df.iris

# Para ver los primeros 2 elementos del dataframe
head(iris,2)

# Para ver los ultimos 6 elementos del dataframe
tail(iris)

# Ver los distintos elementos de una columna
unique(iris$Species)

# Para cambiar los nombres de las columnas

names(iris) <- c("Sepal.Width",
                 "Sepal.Length",
                 "Petal.Width",
                 "Petal.Length",
                 "Species")

# Para eliminar una columna
iris$Species <- NULL

# Estadísticos básicos
min(iris$Sepal.Length)
mean(iris$Sepal.Length)
max(iris$Sepal.Length)
median(iris$Sepal.Length)

# Operadores relacionales
10 > 10
10 < 10
10 <= 10
10 >= 10
10 != 10
10 == 10

# Podemos comparar los valores de las columnas de un dataframe
iris$Sepal.Width > 3

# Podemos usar la comparación para filtrar un dataframe
iris[iris$Sepal.Width > 3 , ]

# Para ver la estructura de un dataframe
str(iris)

# Para ver los estadísticos básicos de las columnas de un dataframe
summary(iris)

# &: TRUE SI SE CUMPLEN TODAS LAS CONDICION
# |: TRUE SI ALMENOS SE CUMPLE UNA CONDICION
x <- 5
x < 1 | x == 5 

# Ejemplo de la diferencia entre & y &&
(c(-1,0,1) >= 0) & (c(-1,0,1) <= 0)
(c(-1,0,1) >= 0) && (c(-1,0,1) <= 0)