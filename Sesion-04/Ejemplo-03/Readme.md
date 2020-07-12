`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-02`] > [`Ejemplo-05`] 
## Funciones, condiciones y loops

### OBJETIVO
- Aprender a hacer un loop con FOR 

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion02/Ejemplo-05`

#### DESARROLLO

# Recorre una secuencia desde hasta 10 de uno en uno
```{r}
for (i in 1:10) {
  print (i)
}
```

#Recorre los valores contenidos en el vector
```{r}
for (n in c(2,5,10,20,50)) {
print(n)
}
```

#Recorre los valores contenidos en el vector de Strings.
```{r}
arrayString <- c("Loops.","ForLoop","WhileLoop","DoWhileLoop","WhileLoop")
for (n in arrayString) {
print(n)
}
```


Vamos a crear una un funcion para obtener los primeros cien nombres de carros (variable) de mtcars (base de la informacion)

```{r}
head(mtcars)
mtcars <- mtcars 
for(i in 1:100) {print(mtcars$`nombre carro`[i])}

```

Primero tenemos que nombrar nuestra base para que quede guardada y operar sobre ella 
