######################################
########## Fundamentos de R ##########
##########    Sesión 03     ##########
##########  Ejercicio 03    ##########
######################################

# filter() 
# select() 
# arrange()
# rename()
# mutate()
# group_by(col) %>% summarise()

library(dplyr)

# Vemos estructura de iris
str(iris)

mean(iris$Sepal.Length)

# ¿Cuáles renglones tienen Sepal.Length mayor o igual a 6?
data('iris')

nrow(iris[(iris$Sepal.Length >=2) & (iris$Species == 'setosa'), ])

# Nos quedamos con los renglones que tengan Sepal.Length mayor o igual a 
iris %>% 
  filter(Sepal.Length >= 2) %>% 
  filter(Species == 'setosa') %>%
  nrow()

# Seleccionamos las columnas Sepal.Lenght y Petal.Length
# Además, filtarmos renglones con Sepal.Length mayor o igual a 6 y Petal.Length mayor a 4.5
# Seleccionamos solo los primeros 5 renglones

df.iris <- iris %>% 
              select(Sepal.Length, Petal.Length) %>%
              filter((Sepal.Length >= 6) & (Petal.Length > 4.5)) 

# Seleccionamos todas las columnas menos Species y los primeros 5 renglones
iris %>%
  select(-Species) %>%
  head(5)

# Seleccionamos las columnas que empiecen con S y los primeros 5 renglones
iris %>% 
  select(starts_with('S')) %>% 
  head(5)

# Ordenamos ascendentemente por la columna Sepal.Lenght y seleccionamos primeros 5 renglones
iris %>% 
  arrange(Sepal.Length) %>% 
  head(5)

# Ordenamos descendentemente por la columna Sepal.Lenght y seleccionamos primeros 5 renglones
iris %>% 
  filter(Petal.Length > mean(iris$Petal.Length)) %>%
  arrange( desc(Petal.Length )) %>%
  select(Petal.Length, Species) %>%
  head(5)


# Cambiamos de nombre la columna Species a Especies y seleccionamos primeros 5 renglones
iris <- iris %>% 
        rename(Especies = Species) 


iris$MultWidth <- iris$Sepal.Width*iris$Petal.Width
head(iris)
data('iris')

# Agregamos una columna que se llama Mult.Width que tenga la multiplicación de Sepal.Width y Petal.Width
iris %>% 
  mutate(Sepal.Width = Sepal.Width*100) %>%
  head(5)

# select date, count(*) from dataset group by 1

# Contamos cuantas especies hay de cada tipo
iris %>%
  group_by(Species) %>%
  count()

# select date, 
#        mean(paid_amount), 
#        max(paid_amount) 
# from dataset group by 1

# Agrupamos por especies y agregamos columnas con descriptivos por grupo
iris %>% 
  group_by(Species) %>%
  summarise(mean_plength = mean(Petal.Length),
            min_plength = min(Petal.Length),
            max_swidth = max(Sepal.Width),
            median_slength = median(Sepal.Length),
            total = n()
            )











# Calcula el promedio de la columna traffic_volume y 
# guardala en mean.traffic
df.traffic <- df
mean.traffic <- mean(df.traffic$traffic_volume)

