#1......Using the mtcars dataset from the dataset packages in R, build a best regression model to predict the 
#Miles Per Gallon(mpg) based on the Horsepower. Compare the result of different regression models. Write the R code
#to visualize the actual data points along with regression points

data("mtcars")
View(mtcars)
#multiple reg
d1 <- lm(mpg ~ cyl+disp+drat+wt+qsec+vs+am+gear+carb+hp, data = mtcars)
summary(d1)
#simple reg
d2 <- lm(mpg ~ hp, data = mtcars)
summary(d2)
#poly reg
d3<-lm(mpg ~ poly(hp,2),data = mtcars)
summary(d3)
plot(mtcars)
library(ggplot2)
#simple linear reg
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_points(color = "black") + # Actual data points
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE, color = "orange") + # Regression line
  labs(title = "Simple Linear Regression: MPG vs Horsepower", x = "Horsepower", y = "Miles Per Gallon")


ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "yellow") + # Actual data points
  geom_smooth(method = "lm", formula = y ~ poly(x, 2), se = FALSE, color = "red") + # Polynomial regression line
  labs(title = "Polynomial Regression (Degree 2): MPG vs Horsepower", x = "Horsepower", y = "Miles Per Gallon")

#2......The UCB Admission dataset contains information about graduate school admission atUC Berkeley, 
#including department ,gender,number of application and whether they were they admittied Build a decision tree 
#model to predict whether an application will be admitted based on gender and department. 
#Take input values from yourself and check the efficiency of the model


library("rpart")
library("rpart.plot")
data("UCBAdmissions")
View(UCBAdmissions)
ucb_data <- as.data.frame(UCBAdmissions)
ucb_data_expanded <- ucb_data[rep(1:nrow(ucb_data), ucb_data$Freq), -4]  # Remove the Freq column

set.seed(123)
indexs <- sample(1:nrow(ucb_data_expanded), size = 0.7 * nrow(ucb_data_expanded))
iris_train <- ucb_data_expanded[indexs, ]
iris_test <- ucb_data_expanded[-indexs, ]
target <- Admit ~ Gender + Dept
tree <- rpart(target, data = iris_train, method = "class")
rpart.plot(tree)
predictions <- predict(tree, iris_test, type = "class")
actual <- iris_test$Admit
table(predictions, actual)
accuracy <- mean(predictions == actual)
print(paste("Accuracy of the decision tree model:", accuracy))




#3.....Consider airquality dataset i R Predict whether a day will have high ozon levels based on temp.
#wind speed,and solar radiation using Neural Network. Take input values from yourself and check the
#efficiency of the model
# Neural Network

install.packages("neuralnet")
library(neuralnet)

data("airquality")
airquality <- na.omit(airquality) 

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

air_norm <- as.data.frame(lapply(airquality, normalize))

set.seed(123)
train_indices <- 1:floor(0.7 * nrow(air_norm))
air_train <- air_norm[train_indices, ]
air_test <- air_norm[-train_indices, ]

air_model <- neuralnet(Ozone ~ Solar.R + Wind + Temp, data = air_train, hidden = 5)

plot(air_model)

model_results <- compute(air_model, air_test[, c("Solar.R", "Wind", "Temp")])
predicted_ozone <- model_results$net.result

denormalize <- function(x, min_value, max_value) {
  return (x * (max_value - min_value) + min_value)
}
actual_ozone <- denormalize(air_test$Ozone, min(airquality$Ozone), max(airquality$Ozone))
predicted_ozone_denorm <- denormalize(predicted_ozone, min(airquality$Ozone), max(airquality$Ozone))

correlation <- cor(predicted_ozone_denorm, actual_ozone)
print(paste("Correlation between predicted and actual Ozone levels:", correlation))

