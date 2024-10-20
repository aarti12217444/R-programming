#..............................UNIT 3.............................................
#classificatin is the process in which we divide the data into sub catogeray based on model
#regression :- predicting continuous output(number)
#if independ var is getting cange then it will affect n depend var.

#DRY MIX
#d=depend var R responding var Y= graph on the vartical or y-axis M manupaleted var 
# I independent var X graph on the vartical or x-axis

#linear and logistic
#linern
#simple multiple polynomial linear regression
#one independ var and one dependt var y(de) = MX(inde)+B(intersept)(single linear regression)

#how we can pridict price of house :- lm(dependent var ~ independent var)
#lm(price~year)


#simple linear regression:- only one independent var
#lm(dependent var ~ independent var)
#multiple lr:- more than one independent var
#lm(dep ~ x1+x2+x3),lm(dep~. , dataset)
#y=a + a1x1 + a2x2 + a3x3(multiple regression)




#POLYNOMIAL REGRESSION
#Residuals val and coefficientt val shows that our model is working or not(null)


x=c(5.1,5.5,5.8,6.1,6.4,6.7,6.4,6.1,5.10,5.7)
y=c(63,66,69,72,75,78,75,72,69,66)
plot(x,y)

relation = lm(y~x)
abline((relation,col="red",lwd=2))
summary(relation)
data.frame(x=6.3)




mouse.data1 <- data.frame(
  size = c(1.4, 2.6, 1.0, 3.7, 5.5, 3.2, 3.0, 4.9, 6.3),
  age = c(1, 2, 1.5, 4, 5, 3, 2.5, 4.5, 6),  
  weight = c(0.9, 1.8, 2.4, 3.5, 3.9, 4.4, 2.1, 5.6, 6.3)
)
relation2 <- lm(weight ~ size + age, data = mouse.data1)
summary(relation2)

plot(mouse.data1)
d2 <- data.frame(size = 4.2, age = 3)  
predicted2 <- predict(relation2, newdata = d2)
predicted2


getwd()
insurance = read.csv("C:/Users/asus/Downloads/insurance.csv")
str(insurance)
summary(insurance$charges)
hist(insurance$age)
table(insurance$region)
install.packages("psych")
library(psych)
cor(insurance[c("age","bmi","children","charges")])
pairs(insurance[c("age","bmi","children","charges")])
pairs.panels(insurance[c("age","bmi","children","charges")])
ins_model = lm(charges ~ age + children + bmi + sex + smoker + region ,data = insurance)
ins_pred = predict(ins_model,insurance)
ins_model
summary(ins_model)
View(insurance)
data <-data.frame(age = 20, children = 0,bmi = 35, sex = "male", smoker"yes",region = "northwest")
ins_pred2<-predict(ins_model,data)
ins_pred2




data <- data.frame(
  exp = c(1,2,3,4,5,6,7,8,9,10),
  edu = c(12,14,16,14,12,16,14,12,14,16),
  age = c(21,25,24,26,23,27,29,28,30,32),
  sal = c(50,55,60,62,58,65,68,70,72,75)
)
 a =lm(sal ~ exp + edu + age, data = data)
 summary(a)
 new_data = data.frame(exp = 15, edu= 16, age = 34)
 predicted_sal = predict(a,new_data)
 predicted_sal
 
 
 
 
 
 
 
 
 
 data <- data.frame(
   area = c(12 ,23,24,45,67,78,89),
   floor = c(3,5,7,8,9,2,1),
   year = c(2,6,17,3,4,9,1),
   price = c(123,234,345,456,567,678,789)
 )
 a = lm(price ~ area + floor + year , data = data)
 summary(a)
 d1 = data.frame(area = 12,floor = 2, year =2)
 predicted_price = predict(a,d1)
 predicted_price
 
 
 
 
 getwd()
 dataset = read.csv("C:/Users/asus/Downloads/Position_Salaries.csv")
 View(dataset)
 dataset = dataset[2:3]
 dataset
 
 lin_reg = lm(formula = Salary ~.,data = dataset)
 summary(lin_reg)
 plot(dataset$Level, dataset$Salary)
 abline(lin_reg,col="red",lwd=2)
 dataset$Level2 = dataset$Level^2
 dataset$Level3 = dataset$Level^3
 dataset$Level4 = dataset$Level^4
 dataset
 
 poly_reg = lm(formula = Salary ~ .,data=dataset)
 summary(poly_reg)
 
 dataset$Level
 dataset$Level2
 dataset$Level3
 dataset$Level4
 
 