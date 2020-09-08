library(ggplot2)
library(class)

?diamonds

diamonds <- as.data.frame(diamonds)

head(diamonds)
# Problema: Una persona quiere predecir el tipo de cut de un diamante 
#           dado las variables depth, table, x, y, z, carat
# Reto:
# 1. ¿Cuál es la variable y = cut, cuales las x's = depth, table, x, y, z, carat?
# 2. Haz un split de train-test del 70-30.
# 3. Separa las x's, y de cada dataframe train y test
# Hasta este punto tendras cuatro dataframes: x's train, x's test, y train, y test
# 4. Utiliza el algoritmo de knn con k = 3 para dar una predicción al cliente
# 5. Crea una matriz de confusión para medir los resultados
# 6. Investiga como sacar la diagonal de un dataframe y obtenerla de la mat de conf
# 7. % de predicciones correctas
# 8. ¿Cómo se llama esta métrica?

# Reto 2.
# Agregar la semilla (antes del sample) 1995
# correr el algoritmo de knn con k = 3 y ver el porcentaje bien calsificados (como lo hciste hasta ahora)
# correr el algoritmo de knn con k = 5 y ver el % bien clasificado
# correr el algoritmo de knn con k = 7 y ver el % bien clasificado
# ¿Con cuál k te quedarías?

random <- sample(x = 1:nrow(diamonds), size = 0.7*nrow(diamonds))

random
# train: x's
df_train <- diamonds[random, c('depth', 'table', 'x', 'y', 'z', 'carat')]
# test: x's
df_test <- diamonds[-random,  c('depth', 'table', 'x', 'y', 'z', 'carat')]

# train: y's
df_categoria_train <- diamonds[random, 'cut']
# test: y's
df_categoria_test <- diamonds[-random, 'cut']

# algoritmo knn
predict <- knn(train = df_train, #x's train
               test = df_test, # x's test
               cl = df_categoria_train, # y's train
               k = 5)

predict

#matriz de confusion
con_mat <- table(predict, df_categoria_test)
con_mat

# clasificados correctamente
sum(diag(con_mat))/length(predict)









