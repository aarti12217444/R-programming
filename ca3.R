#============================K-NN=====================================================================================

# Load the dataset
data("PlantGrowth")
View(PlantGrowth)
head(PlantGrowth)

# Check structure of the data
str(PlantGrowth)
table(PlantGrowth$group)

# Convert 'group' column to factor with proper labels
PlantGrowth$group <- factor(PlantGrowth$group,
                            levels = c("ctrl", "trt1", "trt2"),
                            labels = c("control", "treatment 1", "treatment 2"))

# Check the updated table and structure
table(PlantGrowth$group)
str(PlantGrowth)

# Calculate percentage proportions
round(prop.table(table(PlantGrowth$group)) * 100, digits = 1)

# Summary statistics of 'weight'
summary(PlantGrowth$weight)

# Normalization function
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

# Normalize the 'weight' column and create a new data frame
data1 <- as.data.frame(lapply(PlantGrowth["weight"], normalize))
summary(data1$weight)

# Split data into training and testing sets
data_train <- data1[1:15, , drop = FALSE]  # Ensuring data is in a data frame format
data_test <- data1[16:30, , drop = FALSE]

# Create labels for training and testing sets
data_train_labels <- factor(PlantGrowth$group[1:15])   # First 15 labels for training
data_test_labels <- factor(PlantGrowth$group[16:30])   # Remaining 15 labels for testing

# Load 'class' library for KNN
if (!require("class")) {
  install.packages("class")
}
library(class)

# KNN prediction
data_test_pred <- knn(train = data_train, test = data_test, cl = data_train_labels, k = 3)

# Load 'gmodels' library for CrossTable
if (!require("gmodels")) {
  install.packages("gmodels")
}
library(gmodels)

# Perform CrossTable analysis
CrossTable(x = data_test_labels, y = data_test_pred, prop.chisq = FALSE)





#===========================================================DECISION TREE===================================================
# Install and load the necessary packages
installed.packages("rpart")
library("rpart")

# Load the PlantGrowth dataset
data("PlantGrowth")
View(PlantGrowth)

# View the structure of the dataset
str(PlantGrowth)

# Sample 110 rows for the training set
indexs = sample(150, 110)
indexs

# Split the dataset into training and testing sets
PlantGrowth_train = PlantGrowth[indexs,]
PlantGrowth_train
PlantGrowth_test = PlantGrowth[-indexs,]
PlantGrowth_test

# Define the target variable
target =  group ~ weight
target

# Train a decision tree using the rpart method
tree = rpart(target, data = PlantGrowth_train, method = "class")

# Install and load the rpart.plot package for visualizing the tree
installed.packages("rpart.plot")
library("rpart.plot")

# Make predictions on the test data
predictions = predict(tree, PlantGrowth_test, type = "class")
predictions

# Get the actual labels from the test set
actual = PlantGrowth_test$group

# Set plot margins for better visualization of the tree
par(mar = c(2, 4, 2, 2))

# Plot the decision tree
rpart.plot(tree, main = "Decision Tree for PlantGrowth Dataset", extra = 1)

# Confusion matrix to compare predictions with actual values
actual = PlantGrowth_test$group
conf_matrix <- table(Predicted = predictions, Actual = actual)
print(conf_matrix)

# Calculate and print the model's accuracy
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
cat("Model Accuracy:", round(accuracy * 100, 2), "%\n")



#==========================================NEUROUNS====================================
# Neural Network
install.packages("neuralnet")
library("neuralnet")
data("PlantGrowth")
View(PlantGrowth)

normalize<-function(x){
  return ((x-min(x)) / (max(x)-min(x)))
}

PlantGrowth_norm <- PlantGrowth
PlantGrowth_norm$weight <- normalize(PlantGrowth$weight)  # Normalize only 'weight'

PlantGrowth_norm <- as.data.frame(lapply(PlantGrowth[, c("weight")], normalize))

PlantGrowth_train<-PlantGrowth_norm[1:15,]
PlantGrowth_test<-PlantGrowth_norm[16,30,]

PlantGrowth_model<-neuralnet(group ~ weight,
                          data = PlantGrowth_train,
                          hidden = 1
)
# By changing hidden value we can get less error as above I used 5 instead of 1
plot(PlantGrowth_model)

model_results <- compute(PlantGrowth_model,PlantGrowth_test[,"weight"])

predicted_growth<- model_results$net.result

cor(predicted_growth,PlantGrowth_test$growth)

# Changing value of Hidden layer
PlantGrowth_model2<-neuralnet(group ~ weight,
                             data = PlantGrowth_train,
                             hidden = 5
)

plot(PlantGrowth_model2)

model_results2<-compute(PlantGrowth_model2,PlantGrowth_test[' "weight'])

predicted_growth2<-model_results2$net.result

cor(predicted_growth2,PlantGrowth_test$growth)




#===========================================================HRICLUSTER============================

# Load the PlantGrowth dataset
data("PlantGrowth")
P1 = PlantGrowth  # Copy the dataset to a new variable
P1  # Display the copied dataset

# Remove the 'Growth' column if it exists (Note: should be 'weight' in PlantGrowth)
P1$Growth = NULL
P1  # Display the modified dataset without the 'Growth' column

# Calculate the Euclidean distance between observations
d = dist(P1, method = "euclidean")

# Perform hierarchical clustering using the average linkage method
hir = hclust(d, method = "average")

# Plot the hierarchical clustering dendrogram
plot(hir)

# Cut the tree into 5 clusters
grps = cutree(hir, k = 3)
grps  # Display the cluster assignments

# Add rectangle borders around the clusters in the dendrogram
plot(hierarchical_model, main = "Hierarchical Clustering Dendrogram", xlab = "", sub = "")
rect.hclust(hierarchical_model, k = num_clusters, border = c("red", "blue", "green"))










install.packages("jpeg")  # Install the jpeg package
library(jpeg)             # Load the jpeg package


# Load the PlantGrowth dataset
data("PlantGrowth")
P1 <- PlantGrowth  # Copy the dataset to a new variable
P1$group <- NULL  # Remove the 'group' column if it's not needed for clustering

# Calculate the Euclidean distance between observations
d <- dist(P1, method = "euclidean")

# Perform hierarchical clustering using the average linkage method
hierarchical_model <- hclust(d, method = "average")

# Load and plot the background image
background_img <- readJPEG("background.jpg")  # Load the image

# Set up an empty plot with the same dimensions as the dendrogram
plot(hierarchical_model, main = "", xlab = "", sub = "", axes = FALSE)
rasterImage(background_img, -10, -10, 10, 10)  # Adjust coordinates as needed

# Plot the hierarchical clustering dendrogram on top
plot(hierarchical_model, main = "Hierarchical Clustering Dendrogram", xlab = "", sub = "", add = TRUE)

# Add rectangle borders around the clusters
num_clusters <- 3  # Set the number of clusters
rect.hclust(hierarchical_model, k = num_clusters, border = c("red", "blue", "green"))

