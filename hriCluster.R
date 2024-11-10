iris
iris1=iris
iris1
iris1$Species  =NULL
iris1   
d = dist(iris1 , method = "euclidean")
hir = hclust(d, method="average")
plot(hir)
grps = cutree(hir,k=5)
grps
rect.hclust(hir,k=5,border = 'blue')

