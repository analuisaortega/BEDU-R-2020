5 + 6
10 - 6
5 %% 2

# Operador binario de la suma al cuadrado
'%?%' <- function(izq,der){
  res <- (izq+der)**2
  return(res)
}

# Reto 2: Crear un operador binario llamado %BinCub%
# que el resultado sea el binomio al cubo de dos numeros 
# (a + b)**3
# Ejecuten 4 %BinCub% 10


'%BinCub%' <- function(a,b){
  res <- (a+b)^3
  return(res)
}

1 %BinCub% 2
