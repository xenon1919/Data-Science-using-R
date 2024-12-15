# Function to calculate accuracy
calculate_accuracy <- function(predicted_labels, true_labels) {
  mean(predicted_labels == true_labels)
}

# Generate random data for testing
num_test_points_per_group <- 10
test_group1 <- matrix(rnorm(2*num_test_points_per_group, mean = c(1, 1), sd = 0.5), ncol = 2)
test_group2 <- matrix(rnorm(2*num_test_points_per_group, mean = c(4, 4), sd = 0.5), ncol = 2)
test_group3 <- matrix(rnorm(2*num_test_points_per_group, mean = c(2, 5), sd = 0.5), ncol = 2)
test_data <- rbind(cbind(test_group1, class = rep(0, num_test_points_per_group)),
                   cbind(test_group2, class = rep(1, num_test_points_per_group)),
                   cbind(test_group3, class = rep(2, num_test_points_per_group)))

# Split test data into features and labels
test_features <- test_data[, 1:2]
test_labels <- test_data[, 3]

# Predict labels for test data
predicted_labels <- sapply(1:nrow(test_features), function(i) {
  nearest_indices <- k_nearest_neighbors(train_data, test_features[i,], k = 3)
  majority_class <- round(mean(train_data[nearest_indices, ncol(train_data)]))
})

# Calculate accuracy
accuracy <- calculate_accuracy(predicted_labels, test_labels)
print(paste("Accuracy:", accuracy))
