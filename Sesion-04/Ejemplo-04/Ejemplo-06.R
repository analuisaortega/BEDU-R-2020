#Sintaxis basica de bucle.
while(test_expression) {
   statement
}

# Ciclo While ejemplo.

precio <- 20

while(precio <= 35){
  print(precio)
  precio <- precio + 5 
}


for (k in c('a','b','c','d')) {
  print(k)
}

# Reto: Con un ciclo for del 1 al 50 e imprimir 
# 'Divisible entre 2' si el numero es divisible entre 2
# en otro caso, "Divisible entre 3" si el numero es divisible entre 3
#               o "No Aplica" si ninguno de los anteriores

for (k in 1:50) {
  if (k%%2 == 0) {
    print('Es divisible entre 2')
  } else{
    if (k%%3 == 0){
      print('Es divisible entre 3')
    } else{ print('Ninguno de los anterior')}
  } 
}

