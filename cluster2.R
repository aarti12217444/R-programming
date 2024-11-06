

library(arules)
library(cluster)
getwd()
setwd("C:/Users/asus/Downloads")
data<-read.csv("cancer.csv")
View(data)
data_l<-data[,c(-1:-2)]
data_norm<-as.data.frame(lapply(data_l,normalize))
View(data_norm)
data_modal<-kmeans(data_norm,center = 2, nstart = 20)
data_modal$cluster
data_modal$centers
tab<-table(data$diagnosis,data_modal$cluster)
tab
table(data$diagnosis)
