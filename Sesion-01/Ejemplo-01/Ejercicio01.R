######################################
########## Fundamentos de R ##########
##########    Sesión 01     ##########
##########  Ejercicio 01    ##########
######################################

# Declaramos una variable de cada tipo de datos

variable.char <- "Hola R"
variable.num <- 3.1416
variable.int <- 149213L
variable.logical <- TRUE

# Imprimimos las clases de cada variable
class(variable.char)
class(variable.num)
class(variable.int)
class(variable.logical)


vector.nombres <- c('Ana', 'Salvador', 'Andres','Romel')
vector.edades <- c(10, 11, 15, 20)
class(vector.nombres)
vector.nombres <- c(vector.nombres, 'Carlos')
vector.nombres.nuevos <- c('Edgar','Hazael')
vector.nombres <- c(vector.nombres, vector.nombres.nuevos)


# Para crear un vector con secuencia 
vector.seq.bytwo <- seq(from=1, to = 10, by=2)
vector.seq.bytwo

vector.seq.negative <- seq(from = 10, to = 1, by=-5)
vector.seq.negative

# Para crear un vector con valores repetidos
vector.rep <- rep(x=1, times = 100)
vector.rep

vector.rep.each <- rep(x = c(1,2,3), each = 3)
vector.rep.each

vector.rep.complete <- rep(x = c(2,3), each = 4, times = 6)
vector.seq <- seq(from = 100, to =0, by= -3)
vector.final <- c(vector.rep.complete, vector.seq)

vector.final

# Para ordenar ascendente y descendente un vector
vector.sorted.increasing <- sort(vector.final)
vector.sorted.increasing

vector.sorted.decreasing <- sort(vector.final, 
                                 decreasing = TRUE)
print(vector.sorted.decreasing)

# Para ver el tamaño de un vector
length(vector.sorted.decreasing)

vector.edades*6

vector.final[1]

# Para extraer el primer elemento de un vector
vector.final[2:5]

# Para extraer el primer y tercer elemento
vector.final[c(1,3,16)]

# Para extraer el último elemento del vector
vector.final[-length(vector.final)]

# Reemplazar el valor del primer elemento por 8
vector.new[1] <- 8
vector.new
