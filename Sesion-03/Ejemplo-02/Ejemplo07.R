######################################
########## Fundamentos de R ##########
##########    Sesión 01     ##########
##########  Ejercicio 07    ##########
######################################

# filter()
# select()
# arrange()
# rename()
# mutate()
# group_by(col) %>% summarise()

#install.packages('dplyr')
library(dplyr)

# Vemos estructura de iris
str(iris)

mean(iris$Sepal.Length)

names(Metro_Interstate_Traffic_Volume)

# Nos quedamos con los renglones que tengan Sepal.Length mayor o igual a 
iris %>% filter(Sepal.Length >= 6)

# Seleccionamos las columnas Sepal.Lenght y Petal.Length
# Además, filtarmos renglones con Sepal.Length mayor o igual a 6 y Petal.Length mayor a 4.5
# Seleccionamos solo los primeros 5 renglones

iris %>% 
  select(Sepal.Length, Petal.Length) %>%
  filter((Sepal.Length >= 6) & (Petal.Length > 4.5)) %>%
  head(5)

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
  arrange(desc(Sepal.Length)) %>%
  head(5)

# Cambiamos de nombre la columna Species a Especies y seleccionamos primeros 5 renglones
iris %>% rename(Especies = Species) %>%
        head(5)

iris %>% head(5)

# Agregamos una columna que se llama Mult.Width que tenga la multiplicación de Sepal.Width y Petal.Width
iris %>% 
  mutate(Mult.Width = Sepal.Width*Petal.Width) %>%
  head(5)

# Contamos cuantas especies hay de cada tipo
iris %>%
  group_by(Species) %>%
  count()

# Agrupamos por especies y agregamos columnas con descriptivos por grupo
iris %>% 
  group_by(Species) %>%
  summarise(Mean.Sepal.Length = mean(Sepal.Length),
            Median.Petal.Length = median(Sepal.Length),
            Max.Petal.Width = max(Petal.Width),
            Min.Petal.Length = min(Petal.Length))
