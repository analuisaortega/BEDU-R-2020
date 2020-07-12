5 + 6 
10 - 6
5 %% 2

'%?%' <- function(izq,der){
  res <- (izq+der)^2
  return(res)
}

4 %?% 5

bincuad <- function(izq,der){
  res <- (izq+der)^2
  return(res)
}

bincuad(2,1)


# Reto 1: Crear un operador binario llamado %BinCub%
# que el resultado sea el binomio al cubo de dos numeros 
# (a + b)^3 


'%BinCub%' <- function(a,b){
  res <- (a+b)^3
  return(res)
}

1 %BinCub% 2
