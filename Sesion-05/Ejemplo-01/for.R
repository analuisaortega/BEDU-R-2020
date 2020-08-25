# Ciclo for
for(k in 1:10){
  k <- k +10
  print(k)
}

for(i in 1:100) {
  res <- ifelse(i %% 2 == 0, 'par','non')
  print(paste('El num', i, 'es', res))
}

#### Reto 1: Crear un for para obtener la 
####         suma de los numeros del 1 al 50

suma <- 0
for(k in 1:50){
  suma <- suma + k
}
print(suma)

#### Reto bonus: Crear un for para contar cuantos numeros 
####             nones y cuantos pares hay del 1 al 100

suma_nones <-0
suma_pares <-0
for(k in 1:100) {
  ifelse(k%%2 == 0, 
         suma_pares <- suma_pares + 1, 
         suma_nones <- suma_nones + 1)
}
print(suma_pares)
print(suma_nones)
