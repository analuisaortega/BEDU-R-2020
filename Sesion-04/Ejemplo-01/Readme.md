[`Estadística con R`](../Readme.md) > `Sesión 01: Propedéutico de R`

## Crear funciones

### OBJETIVO

- Al final de el `Ejemplo-05` serás capaz de:
 

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

### TEORÍA: CREAR FUNCIONES

#### PARTE 1. SINTÁXIS GENERAL DE UNA FUNCIÓN

Las funciones que ya existen en R son muy fáciles de utilizar. Por ejemplo, la función `mean()` recibe como argumento una serie de números y regresa el promedio. En realidad, casi todas las funciones generales están programadas en R. Por lo tanto, nos limitaremos  a crear nuevas funciones solo en los casos donde necesitamos crear una serie de instrucciones muy particulares. 

Para poder crear una función, hay que conocer su estructura:
1. Nombre de la función
2. Argumentos
3. Cuerpo
4. Resultado

Para poder escribir una nueva función, se tiene que hacer siguiendo la sintáxis:
```r
nombre.funcion <- function(argumento.1, argumento.2,...,argumento.n){
  ...operaciones entre argumentos...
  ...guardar resultado a mostrar en una variable (var.resultado)...
  return(var.resultado)
  }
``` 

En donde, en este caso, el nombre la función es nombre.funcion y tiene n argumentos llamados argumento.1, argumento.2, ..., argumento.n. El cuerpo de la función depende de las operaciones que queramos hacer utilizando los argumentos y esta función regresa la var.resultado.

#### PARTE 2. NUSTRA PRIMER FUNCIÓN

Vamos a crear una función que tenga:
1. Nombre: saludo
2. Argumento: nombre
3. Body: utilizar el nombre de la función para crear 'Hola -nombre-'
4. Resultado: Que al llamar esta función, nos regrese el mensaje

```r
saludo <- function(nombre){
  mensaje <- paste('Hola', nombre)
  return(mensaje)
  }
```

El objetivo de ponerle un nombre a nuestra función, es que después podamos utilizarla, llamandola con ese nombre. Por ejemplo, para nuestra función saludo:

```r

# Llamada a la función
saludo('Ana')
saludo('Pablo')  
```

### PARTE 3. UNA NUEVA FUNCIÓN 

La función que creamos es una muy sencilla, pues solo recibe un argumento y solamente hace un paso en el cuerpo de la función. Veamos otro ejemplo, que al final sigue la misma sintáxis e idea de todas las funciones

```r

# Declaramos una función
operacion.personalizada <- function(a,b,c){
  paso.1 <- (a+b)*4 + 2*a
  paso.2 <- paso.1**2 + c/2
  paso.3 <- paso.2**3
  return(paso.3)
  }

# Llamada a la función
operacion.personalizada(1,2,3)
operacion.personalizada(7,8,9)
```
