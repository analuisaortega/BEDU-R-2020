edad <- 55

if(edad >= 18){
  print('Estas invitado')
} else{
  print('Eres menor de edad')
}

ifelse(edad >= 18, 
       ifelse(edad <= 50, 'Estas invitado', 'Lista de espera'), 
       'Eres menor de edad')

iris$category <- ifelse(iris$Sepal.Length > 6, 'bigger', 'smaller')
iris$category <- as.factor(iris$category)
summary(iris)

# Reto: crear una nueva columna que se llame category2 y que sea:
# "small" si Sepal Length es menor o igual a 5
# "medium" si Sepal Length esta entre 5 y 7
# "big" si Sepal Length es mayor o igual a 7

iris$category <- NULL

## Recorre una secuencia desde hasta 10 de uno en uno
for(k in 1:10) {
  print(k)
}

#Recorre los valores contenidos en el vector
for(i in c(2,5,10,20,50)) {
  print(i)
}

for (i in 1:nrow(iris)) {
  renglon.i <- iris[i, ]
  suma <- renglon.i$Sepal.Length + renglon.i$Petal.Length
  print(ifelse(suma > 9, 'Grande', 'Chico'))
}


