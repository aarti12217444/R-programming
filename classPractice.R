#define a data structure and store it into sum R file in the current working diroctery implement load()
#create a data frame consisting of record of 3 students and store into them in csv file and file should not be stored in current working file
#display the list of all the variables and remove the var in one row

a<-c(1L,2L,3L,4L,5L)
save(a,file="Rprogramming.RData")
load("Rprogramming.RData")
getwd()


df<-data.frame(
  name=c("Aarti","aaru","kashyap"),
  age=c(12,23,45),
  id=c(12223,12245,12267)
)
print(df)
write.csv(df,file="Rprogramming.RData")
getwd()

list<-c(1L,2L,3L,4L,5L)
list2<-c(12,23,45,67,89)
print(list)
print(list2)
rm(list=ls())




#find the number of rows and cols in the exsisting file data and generate the summary of year and sold out.
#find the min & mix value of the price
#


setwd("C:/")
getwd()
read.csv("usedcars.csv")
a=read.csv("usedcars.csv")
str(a)
s1<-na.omit(50)
view(51)


summary(s1)
s0$sales[is.na(s0$sales)] <- mean(s0$sales,na.rm = TRUE)
s0$PUnit.rofit[is.na(s0$Profit)] <- mean(s0$Profit,na.rm = TRUE)
s0$sales[is.na(s0$sales)] <- mean(s0$sales,na.rm = TRUE)


# Load the iris dataset
data(iris)
# View the first few rows of the iris dataset
view(iris)
# Check the structure of the iris dataset
str(iris)

# Remove the first column from the dataset
a <- iris[-1]

# Get summary statistics for the Sepal.Length and Petal.Length columns
summary(a[c("Sepal.Length", "Petal.Length")])

# Function to normalize a vector
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

# Apply normalization to the Sepal.Width and Petal.Width columns
a1 <- as.data.frame(lapply(a[2:3], normalize))

# Get summary statistics for the 'Sepal.Length' column
summary(a$Sepal.Length)

# Split the dataset into training and test sets
a_train <- a1[1:120, ]
a_test <- a1[121:150, ]

# Assign labels for training and test sets
a_train_labels <- iris[1:120, 1]
a_test_labels <- iris[121:150, 1]

# Install and load the 'class' package for the knn function
if (!require(class)) install.packages("class")
library(class)

# Perform k-NN classification
a_test_pred <- knn(train = a_train,
                   test = a_test,
                   cl = a_train_labels,
                   k = 21)

# Display the predicted labels
a_test_pred

# Install and load the 'gmodels' package for CrossTable
if (!require(gmodels)) install.packages("gmodels")
library(gmodels)

# Create a cross table to compare actual and predicted labels
CrossTable(x = a_test_labels,
           y = a_test_pred)
