`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-02`] > [`Ejemplo-06`] 
## Funciones, condiciones y loops

### OBJETIVO
- Aprender a hacer un loop con WHILE 

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion02/Ejemplo-06`

#### DESARROLLO

#Sintaxis basica de bucle.
```{r}
while (test_expression) {
   statement
}
```


#Creemos una lista de precios que asociaremos a nuestros productos. Iniciaremos por un valor de 20MXN y crearemos una #funcion para que incrementen en 5MXN hasta llegar a un precio de 2500MXN. 

```{r}
precio <- 20

while(precio <= 2500){
  print(precio)
  precio <- precio + 5 
}

```


# Iterar un array de cadenas.
```{r}
v <- c("Hello","while loop")
cnt <- 2

while (cnt < 7) {
   print(v)
   cnt = cnt + 1
}
```

# Estructura de control dentro de ciclo While.
```{r}
x <- 0
while(x < 5){
  x <- x+1;
  if (x == 3)
    next; 
  print(x);
  }
  ```
