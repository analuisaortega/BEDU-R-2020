# install.packages('class')

library(class)

set.seed(2020)
# x's: Sepal.Length, Sepal.Width, Petal.Width, Petal.Length 
# y: Species

random <- sample(x = 1:nrow(iris), size = 0.8*nrow(iris))

# train: x's
iris_train <- iris[random, -5]

# test: x's
iris_test <- iris[-random, -5]

# train: y's
iris_categoria_train <- iris[random, 'Species']

# test: y's
iris_categoria_test <- iris[-random, 'Species']

# algoritmo knn
predict <- knn(train = iris_train, #x's train
               test = iris_test, # x's test
               cl = iris_categoria_train, # y's train
               k = 9)

#matriz de confusion
con_mat <- table(predict, iris_categoria_test)
con_mat

sum(diag(con_mat))/length(iris_categoria_test)



