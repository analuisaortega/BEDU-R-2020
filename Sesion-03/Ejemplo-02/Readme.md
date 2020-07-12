[`Estadística con R`](../Readme.md) > `Sesión 01: Propedéutico de R`

## LIBRERIA DPLYR

### OBJETIVO

Al final de el `Ejemplo-07` serás capaz de:
- Utilizar las funciones 

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash
5. Completar el `Ejemplo-06`
6. Completar el `Reto-06`  

### TEORÍA

El paquete dplyr nos ayuda a manipular dataframes pues, nos permite tener una gramática mucho más amigable y además, nos presenta el operador pipe `%>%` el cuál nos permite realizar una operación tras otra.

Las principales funciones a utilizar con dplyr son:
- `**filter()**`: Nos ayuda a aplicar filtros al dataframe.
- `**select()**`: Nos ayuda a seleccionar las columnas del dataframe.
- `**arrange()**`: Nos ayuda a ordenar el dataframe de acuerdo a una o más columnas.
- `**rename()**`: Nos ayuda a cambiar el nombre de las columnas de un dataframe.
- `**mutate()**`: Nos ayuda a agregar columnas con transformaciones.
- `**group_by()**`: Nos ayuda a agrupar por alguna o más columnas (GROUP BY en SQL).
- `**summarise()**`: Nos ayuda a, dado un agrupamiento, obtener agregados.

#### PARTE 1. FILTER

Al utilizar `filter()`, estamos filtrando a que una o más columnas del dataframe cumplan alguna condición. Podemos utilizar más de una condición en cada paso. Nota que la notación primero nos pide el dataframe sobre el que trabajaremos, en este caso **iris** y despues con el operador pipe `%>%` indicamos que, sobre el dataframe que elegimos, haga algun filtro. 

```r
library(dplyr)

iris %>% filter(Sepal.Length >= 6)
  
iris %>% filter((Sepal.Length >= 6) & (Petal.Length > 4.5))
```

#### PARTE 2. SELECT

Cuándo deseamos seleccionar o excluir algunas columnas, podemos utilizar `select()`. Podemos seleccionar las columnas que tenemos, o las que no queremos si anteponemos el signo negativo. Además, podemos poner condiciones sobre los nombres de las columnas, por ejemplo que empiece con S. Puedes notar que se pueden combinar las funciones de dplyr, en este caso `select()` y `filter()`. Lo importante es, cada que utilizamos una función, indicar con `%>%` que queremos seguir operando sobre los resultados.

```r

iris %>% 
  select(Sepal.Length,Petal.Length) %>%
  filter((Sepal.Length >= 6) & (Petal.Length > 4.5)) %>%
  head(5)

iris %>%
  select(-Species) %>%
  head(5)

iris %>% 
  select(starts_with('S')) %>% 
  head(5)
```

#### PARTE 3: ARRANGE

Cuando deseamos que el dataframe este ordenado, ya sea ascendemente o descendemente respecto a una o más columnas, utilizaremos `arrange()`. 

```r
iris %>% 
  arrange(Sepal.Length) %>% 
  head(5)

# Ordenamos descendentemente por la columna Sepal.Length y seleccionamos primeros 5 renglones
iris %>% 
  arrange(desc(Sepal.Length)) %>%
  head(5)
```

#### PARTE 4: RENAME

Para cambiar el nombre de alguna columna, utilizamos `rename()`. En esta, debemos especificarle el nombre nuevo de la columna = nombre viejo de la columna. 

```r
iris %>%
  rename(Especies = Species) %>%
  head(5)
```

#### PARTE 5: MUTATE

Para agregar o transformar columnas, utilizamos mutate. En esta, podemos especificar la transformación deseada y el nuevo nombre de la columna. Si ponemos un nombre de columna existente, simplemente reemplazará esa columna por la transformación nueva.

```r
iris %>% 
  mutate(Mult.Width = Sepal.Width*Petal.Width) %>%
  head(5)
```

#### PARTE 6: GROUP BY

¿Recuerdas cuando utilizabas GROUP BY en SQL? Algo muy parecido nos permite hacer dplyr. La lógica es que cuándo necesitamos información agregada, hay que, primero, agrupar y después especificar el estadístico de interés. En SQL, un count y un mean se hacían igual manera. En R, hay que distinguir estos dos casos:

1. Cuándo queremos hacer el conteo por grupo, basta con, después de hacer `group_by` utilizamos inmediatamente después `count()`.
2. Cuándo hacemos un `group_by()` y queremos agregar estos estadísticos de interés, debemos especificarlos dentro de `summarise()`. 

```r
iris %>%
  group_by(Species) %>%
  count()

iris %>% 
  group_by(Species) %>%
  summarise(Mean.Sepal.Length = mean(Sepal.Length),
            Median.Petal.Length = median(Sepal.Length),
            Max.Petal.Width = max(Petal.Width),
            Min.Petal.Length = min(Petal.Length))
```
