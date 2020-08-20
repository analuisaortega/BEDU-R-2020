edad <- 50

if(edad >= 18){
  print('Estas invitado')
} else{
  print('Eres menor de edad')
}

# Anidación
ifelse(edad >= 18, 
       ifelse(edad < 50, 'Estas invitado' , 'Lista de espera'), 
       'Eres menor de edad')

# Crear una columna con ifelse
iris$category <- ifelse(iris$Sepal.Length > 6, 'bigger', 'smaller')
iris$category <- as.factor(iris$category)
str(iris)

# Reto: crear una nueva columna que se llame category2 y que sea:
# "small" si Sepal Length es menor o igual a 5
# "medium" si Sepal Length es mayor 5 y menor 7
# "big" si Sepal Length es mayor o igual a 7
# pasen la columna de category 2 a factor
# vean la estructura de iris

library(dplyr)

iris %>% select(Species) %>% filter(Species == 'setosa')

iris %>% group_by(Species) %>% 
  summarise(n = n(), min = min(Sepal.Width))

iris %>% group_by(Species) %>% count()

iris %>% 
  group_by(Species) %>% 
  summarise(n = n(),
            min = min(Sepal.Width),
            sum_big = sum(ifelse(category == 'bigger', 1 ,0 )),
            sum_cond = sum(ifelse(Sepal.Length > 6.5  & Petal.Length >= 1, 1 ,0 ) ) 
  )

# Reto 4: Crear un dataframe por specie que tenga:
# - conteo por especie
# - suma de los que tienen category2 == big por especie
# - suma de los que tienen category2 == small por especie



## Recorre una secuencia desde hasta 10 de uno en uno
for(k in 1:10) {
  print(k)
}


for (i in 1:nrow(iris)) {
  renglon.i <- iris[i, ]
  suma <- renglon.i$Sepal.Length + renglon.i$Petal.Length
  print(ifelse(suma > 9, 'Grande', 'Chico'))
}


