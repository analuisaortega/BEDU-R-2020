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
iris[1 , 5]

# Tercer renglón, segunda columna
iris[3 , 2]


iris[ c(1,2,5) , 1:10 ]

names(iris)

iris[ , c(1,5)] # por ubicacion
iris[ , c('Species','Petal.Length')] # por nombre de columnas
iris$Species # pedir una columna en particular
iris[1:10 , -1]



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
                          Sepal.Width  = c(2.5,3.5),
                          Petal.Length = c(3,3),
                          Petal.Width  = c(0.01,2.08),
                          Species      = c('virginica','versicolor')
           )

iris.parte2

# Pegar dataframes por renglones
df.iris <- rbind(iris, iris.parte2)
df.iris

# Para ver los primeros 2 elementos del dataframe
head(iris, 10)

# Para ver los ultimos 6 elementos del dataframe
tail(iris, 5)

iris.parte2$Species <- NULL

# Para recuperar datos de un dataframe precargado
mtcars$cyl <- NULL
head(mtcars)

data('mtcars')

?data

??mean

# Ver los distintos elementos de una columna
unique(iris$Species)

# Para cambiar los nombres de las columnas
names(iris) <- c("Sepal.Width_2",
                 "Sepal.Length_2",
                 "Petal.Width_2",
                 "Petal.Length_2",
                 "Especies")
names(iris)[4] <- 'Petal.Length_2'


colnames(iris)

unique(rownames(mtcars))

mtcars$carnames <- rownames(mtcars)

head(mtcars)

# Estadísticos básicos
min(iris$Sepal.Length)
mean(iris$Sepal.Length)
max(iris$Sepal.Length)
median(iris$Sepal.Length)

x <- c(1, 2, 3, 4, 10, 11)
median(x)
mean(x)

?str
str(iris)

summary(iris)

# Podemos comparar los valores de las columnas de un dataframe
iris$Sepal.Width > 3

# Podemos usar la comparación para filtrar un dataframe
iris.filtrado <- iris[iris$Sepal.Width_2 > 5 , ]

# Utilizando un AND

iris[(iris$Sepal.Width > 5) & (iris$Species == 'setosa'), ]

data('iris')

data()
