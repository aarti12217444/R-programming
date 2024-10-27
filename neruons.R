# Neural Network
install.packages("neuralnet")
library("neuralnet")
getwd()
setwd("C:/Users/yashs/OneDrive/Desktop/Yash/R_Sem5")
concrete<-read.csv("Concrete_Data.csv")
View(concrete)
normalize<-function(x){
  return ((x-min(x)) / (max(x)-min(x)))
}
concrete_norm<-as.data.frame(lapply(concrete,normalize))
concrete_train<-concrete_norm[1:773,]
concrete_test<-concrete_norm[774:1030,]
concrete_model<-neuralnet(strength ~ cement + slag + ash + water + superplasticizer + coarseagg + fineagg + age ,
                          data = concrete_train,
                          hidden = 1
                          )
# By changing hidden value we can get less error as above I used 5 instead of 1
plot(concrete_model)
model_rsults <- compute(concrete_model,concrete_test[1:8])
predicted_strength<- model_rsults$net.result
cor(predicted_strength,concrete_test$strength)

# Changing value of Hidden layer
concrete_model2<-neuralnet(strength ~ cement + slag + ash + water + superplasticizer + coarseagg + fineagg + age,
                           data = concrete_train,
                           hidden = 5
                           )
plot(concrete_model2)
model_results2<-compute(concrete_model2,concrete_test)
predicted_strength2<-model_results2$net.result
cor(predicted_strength2,concrete_test$strength)
