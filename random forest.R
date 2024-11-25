# Install and load the correct package
install.packages("randomForest")
library(randomForest)

# Load the iris dataset
data("iris")

# Set a seed for reproducibility
set.seed(123)

# Split data into training and testing sets
sample_index <- sample(1:nrow(iris), 0.7 * nrow(iris))
train_data <- iris[sample_index, ]
test_data <- iris[-sample_index, ]

# Build the Random Forest model
rf_model <- randomForest(Species ~ ., data = train_data, ntree = 100)

# Make predictions on the test dataset
predictions <- predict(rf_model, test_data)

# Create a confusion matrix
confusion_matrix <- table(predictions, test_data$Species)
print(confusion_matrix)

# Calculate and print accuracy
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(paste("Accuracy:", round(accuracy * 100, 2), "%"))





# Install and load the correct package
install.packages("randomForest")
library(randomForest)

# Load the iris dataset
data("mtcars")
View(mtcars)
# Set a seed for reproducibility
set.seed(123)

# Split data into training and testing sets
sample_index <- sample(1:nrow(mtcars), 0.7 * nrow(mtcars))
train_data <- mtcars[sample_index, ]
test_data <- mtcars[-sample_index, ]

# Build the Random Forest model
rf_model <- randomForest(mpg ~ ., data = train_data, ntree = 100)

# Make predictions on the test dataset
predictions <- predict(rf_model, test_data)

# Create a confusion matrix
confusion_matrix <- table(predictions, test_data$mpg)
print(confusion_matrix)

# Calculate and print accuracy
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(paste("Accuracy:", round(accuracy * 100, 2), "%"))

