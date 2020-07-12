######################################
########## Fundamentos de R ##########
##########    Sesión 01     ##########
##########  Ejercicio 05    ##########
######################################

# Declaramos una función

operacion.ana <- function(a, b){
  res <- (a+b)^2
  return(res) 
  }

operacion.ana('hola',5)




# Declaramos una función
operacion.personalizada <- function(a=0,b =0,c =0){
  paso.1 <- (a+b)*4 + 2*a
  paso.2 <- paso.1**2 + c/2
  paso.3 <- paso.2**3
  return(paso.3)
  }

# Llamada a la función
operacion.personalizada(1,2)
operacion.personalizada(7,8,9)
operacion.personalizada(0,0,0)

saludo <- function(nombre){
  mensaje <- paste('Hola', nombre)
  return(mensaje)
}

# Llamada a la función
saludo('Ana')

# readline
nombre <- readline(prompt = '¿Cuál es tu nombre?')
welcome(nombre)

