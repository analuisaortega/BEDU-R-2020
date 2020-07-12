[`Estadística con R`](../Readme.md) > `Sesión 01: Propedéutico de R`

## Lectura de Datos

### OBJETIVO

Al final de el `Ejemplo-04` serás capaz de:
- Leer archivos csv que están en local
- Leer archivos csv que están en una página URL

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash
5. Completar el `Ejemplo-03` 
6. Completar el `Reto-03`

### TEORÍA: LECTURA DE DATOS

#### PARTE 1. WORKING DIRECTORY

En el repositorio de `Estadística con R`, tenemos una carpeta llamada `Data`. En esta carpeta, hay varios archivos csv los cuáles, o iremos trabajando durante el curso, o usaremos como opciones de datos para el proyecto a desarrollar.

Cómo ya tenemos todos nuestros archivos en una carpeta, nos conviene cambiar nuestra dirección de trabajo -working directory- a esta carpeta. Esto facilitará la lectura de datos, pues ya le dijimos a la computadora en dónde debe buscar los distintos archivos.

Seguramente en este momento, tenemos un working directory distino, para poder ver en dónde estamos, utilizamos la función `getwd()`. Esto nos imprimirá la ruta de donde estamos trabajando. Para cambiarla, vamos a utilizar la función `setwd()`, la cuál recibe de argumento la nueva ruta que queramos. 

```r

# Para ver la ruta de dónde estamos trabajando
getwd()

# Para bajar dos niveles del directorio de trabajo 
# utilizamos ../.. y para accesar a una nueva carpeta ponemos su nombre, Data
setwd('../../Data')

# Vemos la ruta cambiada
getwd()
```

#### PARTE 2. LEER ARCHIVO DESDE LOCAL

En nuestro caso, ya tenemos en nuestra carpeta los archivos que necesitamos leer. Para lograrlo, usaremos la función `read.csv()`, la cuál recibe como argumento el nombre y tipo de archivo. Nosotros leeremos uno de los datos de nuestra carpeta de `Data` y lo asignaremos a una nueva variable.

Con R, podríamos transformar, quitar o agregar información al dataframe que leímos. Al hacer esto, nos convedría guardar la nueva información también cómo archivo csv en local. Para esto, usamos la función `write.csv()` la cuál crea un nuevo archivo con el nombre que le especifiquemos, utilizando la información de un dataframe.   

```r
# Para leer un archivo que tenemos en local
dataframe.traffic <- read.csv('Metro_Interstate_Traffic_Volume.csv')

# Podemos quedarnos solamente con las primeras 20 observaciones
dataframe.traffic.20 <- head(dataframe.traffic, 20)

# Podemos guardarla como csv en local
write.csv(dataframe.traffic.20, file = 'Short_DF_Example.csv')
```

#### PARTE 3. LEER ARCHIVO VIA URL

Si tenemos una conexión a internet, también podriamos utilizar la función `read.csv()` pero utilizando el URL del archivo en lugar de la ubicación en local.

```r

# Podemos leer un archivo que esta en internet
dataframe.traffic.2 <- read.csv('https://raw.githubusercontent.com/analuisaortega/A2-Estadistica-con-R-2020/new-content/Data/Metro_Interstate_Traffic_Volume.csv', 
                                header =  TRUE)
```
