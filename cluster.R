#********************************************UNIT 5 ****************************
#UNSUPERVISED LEARNING:CLUSTERING AND PATTERN DETECTION
#same group similar characteristic(CLUSTER)
#CLUSTERING IS USED FOR KNOWLEDGE DISCOVERY RATHER THEN PREDICITON

installed.packages("arules")
installed.packages("cluster")
library(arules)
library(cluster)
iris_1<-iris[,-5]
set.seed(240)
kmeans.re<-kmeans(iris_1,centers = 3, nstart = 20)
kmeans.re
kmeans.re$clusters
cm <- table(iris $ Species, kmeans.re $ cluster)
cm
plot(iris_1[c("Sepal.Length","Sepal.Width")],
        coc = kmeans.re$cluster,
        main="k-means with 3 cluster")

kmeans.re$centers
kmeans.re$centers[ ,c("Sepal.Length","Sepal.Width")]
points(kmeans.re$centers[ .c("Sepal.Length",
                             length="Sepal.Width")],
                              col = 1:3,pch=8,cex=3)
