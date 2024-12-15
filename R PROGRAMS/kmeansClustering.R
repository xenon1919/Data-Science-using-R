# Load required library
library(stats)

# Generate sample data
set.seed(123)
data <- matrix(rnorm(100), ncol = 2)

# Define the number of clusters (k)
k <- 3

# Split data into train and test sets
train_indices <- sample(1:nrow(data), 0.7 * nrow(data))
train_data <- data[train_indices, ]
test_data <- data[-train_indices, ]

# Run K-means clustering on train data
kmeans_result <- kmeans(train_data, centers = k)

# Print cluster centers
print(kmeans_result$centers)

# Print cluster assignments for each data point
print(kmeans_result$cluster)

# Visualize clusters for train data
plot(train_data, col = kmeans_result$cluster, pch = 20)

# Plot cluster centers for train data
points(kmeans_result$centers, col = 1:k, pch = 8, cex = 1.5)

# Predict clusters for test data
test_clusters <- predict(kmeans_result, newdata = test_data)

# Visualize clusters for test data
points(test_data, col = test_clusters$cluster, pch = 20)
