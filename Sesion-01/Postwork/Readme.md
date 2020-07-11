[`Estadística con R`](../Readme.md) > `Sesión 01: Propedéutico de R`

### OBJETIVO

Al final del `Postwork` serás capaz de:
- Utilizar más funcionalidades de dplyr

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

### INSTRUCCIONES

Sigue los siguientes ejercicios para aprender nuevas funcionalidades con dplyr:

- Seleccionar columnas
- Seleccionar registros
- Crear nuevas variables
- Sumarizar datos
- Ordenar datos
- Uniones de datos

Como es habitual trabajamos con ejemplos data(iris); 
```{r} 
library(dplyr)
```
Seleccionar columnas select():

```{r}
two.columns <- iris %>%
select(Sepal.Length,Sepal.Width)

columns = c(“Sepal.Length”,”Sepal.Width”)
two.columns <- iris %>%
select(columns)
```
Seleccionar registros filter():
```{r}
setosa <- iris %>%
filter(Species==”setosa”)

species_to_select = c(“setosa”,”virginica”)
species <- iris %>%
filter(Species %in% species_to_select)
table(species$Species)
```
Crear nuevas variables mutate():
```{r}
iris2 <- iris %>%
mutate(Sepal.Length.6 = ifelse(Sepal.Length >=6, “GE 6”, “LT 6”)) %>%
mutate(Sepal.Length.rela = Sepal.Length/mean(Sepal.Length))
```

Sumarizar group_by() summarize():

```{r}
iris %>% group_by(Species) %>%
summarize(mean.Sepal.Length = mean(Sepal.Length),
sd.Sepal.Length = sd(Sepal.Length),
rows = n())
```

Ordenar datos arrange():

```{r}
order1 <- iris %>%
arrange(Sepal.Length)
order2 <- iris %>%
arrange(desc(Sepal.Length))
```

```{r}
iris %>% group_by(Species) %>%
summarize(mean.Sepal.Length = mean(Sepal.Length),
sd.Sepal.Length = sd(Sepal.Length),
rows = n()) %>%
arrange(mean.Sepal.Length)
```

Uniones de datos, inner_join():

```{r}
iris2 <- iris %>%
mutate(id = row_number())

iris3 <- iris2 %>%
filter(Species==”setosa”) %>%
mutate(Sepal.Length.6 = ifelse(Sepal.Length >=6, “GE 6”, “LT 6”)) %>%
mutate(Sepal.Length.rela = Sepal.Length/mean(Sepal.Length)) %>%
select(id,Sepal.Length.6,Sepal.Length.rela)

iris4 <- iris2 %>% inner_join(iris3, by=c(“id”))
```

Left_join():

```{r}
iris5 <- iris2 %>% left_join(iris3, by=c(“id”))
```
anti_join():

```{r}
iris6 <- iris2 %>% anti_join(iris3)
```



