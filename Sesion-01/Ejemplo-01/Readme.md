[`Estadística con R`](../Readme.md) > `Sesión 01: Propedéutico de R`

## Vectores

### OBJETIVO

Al final de el `Ejemplo-01` serás capaz de:
- Consultar el tipo de dato de una variable
- Declarar vectores
- Agregar elementos a vectores
- Combinar vectores
- Crear vectors utilizando diferentes funciones
- Identificar características de los vectores
- Accesar a vectores
- Operar con vectores

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

### TEORÍA: Vectores

#### PARTE 1. ¿QUÉ TIPO DE DATO ES UNA VARIABLE?
Hasta ahora, hemos aprendido a declarar variables y a utilizar R como calculadora. Sólo hemos declarado variables numéricas. Pero, existen diferentes tipos de datos con los que vamos a trabajar: **character, numeric, integer y logical**.

```r
variable.char <- 'Hola R'
variable.num <- 3.1416
variable.int <- 149213L
variable.logical <- TRUE
```

Para consultar el tipo de dato que es cada variable que acabamos de declarar, podemos utilizar la función `typeof(var)` o la función `class(var)`.

```r
print(class(variable.char))
print(class(variable.num)) 
print(class(variable.int))
print(class(variable.logical))
``` 
<details>
        <summary>¿Qué nos devuelve si, en lugar de utilizar la función <code>class(var)</code> utilizamos la función <code>typeof(var)</code>?</summary>
<p><code>print(typeof(variable.char))</code></p>
<p><code>print(typeof(variable.num))</code></p>
<p><code>print(typeof(variable.int))</code></p>
<p><code>print(typeof(variable.logical))</code></p>
</details>

#### PARTE 2. ¿CÓMO DEFINIR UN VECTOR?
Muchas veces necesitamos hacer la misma serie de operaciones sobre diferentes variables. Imagina que necesitas, a los números del 1 al 10, multiplicarlos por 0.582 y elevarlos al cuadrado. Con lo que sabemos hasta ahora, tendríamos que hacer

```r
x.1 <- 1
print((x.1*0.582)^2)

x.2 <- 2
print((x.2*0.582)^2)
```
hasta llegar al 10. Puedes notar que esta operación es **repetitiva**, lo único que va cambiando es el valor de la variable. En este tipo de casos es cuándo vale la pena trabajar con vectores. Un **vector** es un arreglo de datos en el cuál todos los elementos son del mismo tipo.

Para crear un vetor, utilizamos `c()`. Por ejemplo, declararemos dos vectores, el primero con los números del 1 al 5, y el segundo con los números de 7 al 10.

```r
# Para crear un vector
vector.part1 <- c(1,2,3,4,5)
print(vector.part1)

vector.part2 <- c(7,8,9,10)
print(vector.part2)
```

Pero resulta que al fijarnos mejor, el número 6 no está en ningún vector. Por lo tanto, queremos agregarlo al primer vector que creamos.

```r
vector.complete <- c(vector.part1, 6)
print(vector.complete)
```

Algunas veces, necesitamos pegar dos vectores para crear uno nuevo.
```r
vector.complete <- c(vector.part1, 6, vector.part2)
print(vector.complete)
``` 

Existen funciones que nos ayudan a crear vectores en los casos que necesitamos una secuencia (función `seq()`) o que el vector tenga valores repetidos (función `rep()`)

```r
# Para crear un vector con secuencia
vector.seq.byone <- seq(from=1, to=10, by=1)
print(vector.seq.byone)

vector.seq.bytwo <- seq(from=1, to = 10, by=2)
print(vector.seq.bytwo)

vector.seq.negative <- seq(from = 10, to = 1, by=-1)
print(vector.seq.negative)


# Para crear un vector con valores repetidos
vector.rep <- rep(x=1, times = 3)
print(vector.rep)

vector.rep.each <- rep(x = c(1,2), each = 3)
print(vector.rep.each)

vector.rep.complete <- rep(x=c(1,2), each = 3, times = 2)
print(vector.rep.complete)
```

#### PARTE 3. FUNCIONES ÚTILES PARA VECTORES

Cuándo tenemos vectores, será útil ver los valores ordenados, ya sea ascendente o descendente. Para esto, tenemos la función `sort()`. Además, es útil saber el tamaño del vector, es decir, contar cuántos elementos tiene el vector. Para esto, utilizamos la función `length()`.

```r
# Para ordenar un vector
vector.sorted.increasing <- sort(vector.rep.complete)
print(vector.sorted.increasing)

vector.sorted.decreasing <- sort(vector.rep.complete, decreasing = TRUE)
print(vector.sorted)

# Para ver el tamaño de un vector
length(vector.sorted.decreasing)
length(vector.sorted.decreasing)/2
```

#### PARTE 4. ACCESAR A LOS ELEMENTOS DE UN VECTOR
Algunas veces, al tener un vector, queremos ver sus elementos. En particular, aquel que esta en una o más ubicaciones, el primero, el último, o alguno que cumpla otra condición.

```r
# Para extraer el primer elemento de un vector
vector.multiply.four[1]

# Para extrar el primer y segundo elemento
vector.multiply.four[1:2]

# Para extraer el primer y tercer elemento
vector.multiply.four[c(1,3)]


# Para extraer el último elemento del vector
loc.last <- length(vector.multiply.four)
print(loc.last)
vector.multiply.four[loc.last]

# Para extrar el penúltimo elemento del vector
vector.multiply.four[loc.last-1]

# Para extrar todos los elementos menos el primero
vector.multiply.four[-1]

# Para extraer todos los elementos menos el último
vector.multiply.four[-loc.last]

# Para extraer todos los elementos menos el primero y el último
vector.multiply.four[-c(1, loc.last)]


# Para sustituir el valor de un elemento, por ejemplo el primero
vector.multiply.four[1] <- 100
print(vector.multiply.four)
```


#### PARTE 5. OPERACIONES CON VECTORES

La ventaja de declarar un vector, es que podemos hacer operaciones que necesitamos hacer sobre todos los elementos del vector. Podríamos hacer cualquiera de las operaciones aritméticas que hemos hecho al vector. Por ejemplo, podríamos sumarle 1 o multiplicar por 10 o ambas a todos los elementos del vector mucho más fácilmente.

```r
# Los vectores nos permiten hacer operaciones sobre todo el vector
vector.new <- seq(from = 0, to = 25, by = 5)
print(vector.new)

# Para sumarle un número a todos los elementos del vector
vector.new + 1

# Para multiplicar por un número a todos los elementos del vector
vector.new*10

# Combinamos operaciones y cuidamos el orden de las operaciones
(vector.new + 1)*10

# Sumamos dos vectores
vector.new + rep(1, times = 6)
```

<details>
        <summary>Al iniciar la sesión, planteamos un caso en el que queríamos hacer una operación (multiplicar por 0.582 y elevar al cuadrado) sobre los números del 1 al 10. Utiliza la función <code> seq()</code> para crear el vector y después haz la operación deseada. </summary>
<p><code>mi.vector <- seq(1,10)</code></p>
<p><code>print((mi.vector*0.582)^2)</code></p>
</details>
