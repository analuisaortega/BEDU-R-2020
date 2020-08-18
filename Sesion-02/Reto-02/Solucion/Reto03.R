# Imprime el dataframe precargado en R **mtcars**
# - Pide ayuda para ver la descripción del dataframe. Hint: usa `?` 
# Responde: ¿Cuál es el máximo de la columna cyl?
# - Responde: ¿Cuál es el mínimo de la columan qsec?
# - Guarda el promedio de la columna cyl en mean.cyl
# Guarda el promedio de la columna qsec en mean.qsec
# Selecciona los renglones que tengan cyl mayor al promedio (mean.cyl)
# Selecciona los renglones que tengan cyl mayor al promedio (mean.cyl) y qsec mayor al promedio (mean.qsec)
# Guarda la última instruccion en un dataframe que tenga el nombre mtcars.filtrados

mtcars
?mtcars
max(mtcars$cyl)
min(mtcars$qsec)
mean.cyl <- mean(mtcars$cyl)
mean.qsec <- mean(mtcars$qsec)

mtcars[mtcars$cyl > mean.cyl, ]
mtcars.filtrados <- mtcars[(mtcars$cyl > mean.cyl) & (mtcars$qsec > mean.qsec), ]
