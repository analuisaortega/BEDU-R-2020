# install.packages('class')
library(class)

nrow(iris)*0.8

random <- sample(x = 1:nrow(iris),
                 size = 0.8*nrow(iris)) 

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
               k = 7)

iris_categoria_test
predict

#matriz de confusion
con_mat <- table(predict, iris_categoria_test)
con_mat




