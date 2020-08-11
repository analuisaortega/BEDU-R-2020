######################################
########## Fundamentos de R ##########
##########    Sesión 01     ##########
##########  Ejercicio 01    ##########
######################################

# Declaramos una variable de cada tipo de datos

operacion1 <- 5 + 5**2 + 7%%2
print(operacion1)

# tipo de datos para variable
variable.char <- "Hola R"
variable.num <- 3.1416
variable.int <- 149213L
variable.logical <- TRUE

  
# Imprimimos las clases de cada variable
class(variable.char)


# Vectores
vector.nombres <- c('Ana', 'Salvador', 'Andres','Romel')
vector.edades <- c(10, 11, 15, 20)
class(vector.nombres)


vector.nombres <- c(vector.nombres, 'Carlos')
print(vector.nombres)

vector.nombres.nuevos <- c('Edgar','Hazael')

vector.nombres <- c(vector.nombres, vector.nombres.nuevos)

# Para crear un vector con secuencia
seq(from = 1, to = 10, by =1)

# Reto 0: Crear un vector que siga una secuencia 
# que empiece en 5, termine en 51, vaya de 5 en 5
# 5, 10, 15, 20,...,50

# Reto extra:
# Guardenlo en una variable que se llame vec_seq
# Ejecutar vec_seq[1]

vector.seq.bytwo <- seq(from=1, to = 10, by=2)
vector.seq.bytwo

vector.seq.negative <- seq(from = 10, to = 1, by=-5)
vector.seq.negative


# Para crear un vector con valores repetidos
vector.rep <- rep(x=1, times = 100)
vector.rep

vector.rep.each <- rep(x = c(1,2,3), each = 3)
vector.rep.each

vector.rep.complete <- rep(x = c(1,3), 
                           each = 4, 
                           times = 6)
print(vector.rep.complete)

# Reto 0: crear un vector llamado vec.rep que sea:
# 3 3 3 7 7 7 1 1 1 3 3 3 7 7 7 1 1 1

vector.seq <- seq(from = 100, to =0, by= -3)
vector.final <- c(vector.rep.complete, vector.seq)

sort(vector.final)

# Para ordenar ascendente y descendente un vector
vector.sorted.increasing <- sort(vector.final)
print(vector.sorted.increasing)

vector.sorted.decreasing <- sort(vector.final, 
                                 decreasing = TRUE)
print(vector.sorted.decreasing)


vec_ej <- seq(from = 0, to = 10000, by = 7)
print(vec_ej)

# Para ver el tamaño de un vector
length(vec_ej)

vec_ej*6

vec_ej+1

# acceder a un elemento del vector usando la posición en la que está
vec_ej[2]

# Para extraer el primer elemento de un vector
vec_ej[2:5]

# Para extraer el primer y tercer elemento
vec_ej[c(1,3,16)]

# Para extraer el ultimo elemento del vector
vec_ej[length(vec_ej)]

vec_ej[-1]

vec_ej[1] <- 1


