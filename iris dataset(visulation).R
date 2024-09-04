
datasets::iris
View(iris)
str(iris)
a=iris[-1]#delete 1st col from the data set

summary(a[c("Sepal.Width","Petal.Length")])
normalize<-function(x){
  return((x)-(min(x))/(max(x))-(min(x)))
}
a1=as.data.frame(lapply(a[2:3L],normalize))
summary(a$Sepal.Length)
a_train=a1[1:120,]
a_test=a1[122:150,]
a_train_lables=a1[1:120,1]
a_test_lables=a1[121:150,1]
a_train_lables
a_test_lables

if (!require(class)) install.packages("class")
library(class)

a_test_pred <- knn(train = a_train,
                   test = a_test,
                   cl = a_train_labels,
                   k = 21)
a_test_pred

if (!require(gmodels)) install.packages("gmodels")
library(gmodels)
CrossTable(x = a_test_labels,
           y = a_test_pred
)

