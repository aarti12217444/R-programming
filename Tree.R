installed.packages("rpart")
library("rpart")
data(iris)
str(iris)
indexs = sample(150,110)
indexs
iris_train = iris[indexs,]
iris_train
iris_test = iris[-indexs,]
iris_test
target =  Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
target

tree = rpart (target,data = iris_train,method = "class")
installed.packages("rpart.plot")
library("rpart.plot")
predictions=predict(tree,iris_test,type="class")
predictions
actual = iris_test$Species
rpart.plot(tree)

actual = iris_test$Species

