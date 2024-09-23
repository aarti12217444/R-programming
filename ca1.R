
#Q1
#You are provided with a CSV file ‘survey_data’ containing raw survey data with missing values, inconsistent data formats, and erroneous entries.
#(a) Write the R code to import the CSV file and inspect the first few rows. 
#(b) Identify and replace missing values in the dataset with appropriate methods such as mean, median, or mode, and explain your choice. 	        



survey_data <- read.csv("C:/Users/Asus/Downloads/survey_data_with_issues.csv", stringsAsFactors = FALSE)

# Inspecting the first few rows
head(survey_data)
#1b>

library(dplyr)  #for manuplating data
summary(survey_data)
for(col in colnames(survey_data)){
  if(is.numeric(survey_data[[col]])){
    survey_data[[col]][is.na(survey_data[[col]])] <- mean(survey_data[[col]], na.rm = TRUE) # You can use median() instead
  } else {
    
    mode_value <- as.character(names(sort(table(survey_data[[col]]), decreasing = TRUE)[1]))
    survey_data[[col]][is.na(survey_data[[col]])] <- mode_value
  }
}

summary(survey_data)
#------------------------------------------------------------
#Q2	Write R code to implement the K-Nearest Neighbors algorithm on a dataset of “diamonds”. Include the steps for:
 # (a) Splitting the dataset into training and testing sets.
#(b) Applying the KNN model.
#(c) Evaluating the performance using accuracy or confusion matrix.	

#installed.packages("catools")
#installed.packages("ggplots")
library(caTools)  #for data analysis including tools visulation,manuplation
library(ggplot2)
View(diamonds)
data("diamonds")

set.seed(123)
split <- sample.split(diamonds$price, SplitRatio = 0.7)
training_set <- subset(diamonds, split == TRUE)
testing_set <- subset(diamonds, split == FALSE)

#2b>

library(class)
training_features <- training_set[, c("carat", "cut", "color", "clarity")] # Example feature columns
testing_features <- testing_set[, c("carat", "cut", "color", "clarity")]


training_target <- training_set$price
testing_target <- testing_set$price

# Applying KNN with k=5
predicted_values <- knn(train = training_features, test = testing_features, cl = training_target, k = 5)

#2c>

confusion_matrix <- table(predicted_values, testing_target)
print(confusion_matrix)

# Calculating accuracy
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(paste("Accuracy:", accuracy))

#------------------------------------------------------------------
#3Given a dataset mtcars in R, implement the following commands:
#(a) Display the mpg and cyl values of cars having 4 gear.
#(b)Write an sqldf query to group the cars by the number of cylinders (cyl) and calculate the average mpg for each group.
#(c)Display the total number of cars which have each cyl value equal to 6.
#(d)Write a query to select the average mpg for cars with more than 4 cylinders, grouping by the number of gears.


data("mtcars")
View(mtcars)
subset(mtcars, gear == 4, select = c(mpg, cyl))

#3b

library(sqldf)
sqldf("SELECT cyl, AVG(mpg) AS avg_mpg FROM mtcars GROUP BY cyl")

#3c

sqldf("SELECT COUNT(*) AS total_cars FROM mtcars WHERE cyl = 6")

#3d

sqldf("SELECT gear, AVG(mpg) AS avg_mpg FROM mtcars WHERE cyl > 4 GROUP BY gear")


