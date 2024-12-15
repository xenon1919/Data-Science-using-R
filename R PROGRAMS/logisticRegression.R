# Generate sample data
set.seed(123)
x <- 1:100
y <- ifelse(x < 60, 0, 1)  # Binary labels based on a threshold

# Perform logistic regression
logit_model <- glm(y ~ x, family = binomial)

# Summary of the logistic regression model
summary(logit_model)

# Calculate predicted probabilities
predicted_probabilities <- predict(logit_model, type = "response")

# Convert probabilities to binary predictions
predicted_classes <- ifelse(predicted_probabilities > 0.5, 1, 0)

# Calculate accuracy
accuracy <- mean(predicted_classes == y)
cat("Accuracy:", accuracy, "\n")

# Plotting the data
plot(x, y, main = "Logistic Regression", xlab = "X", ylab = "Y")

# Add the logistic regression curve
curve(predict(logit_model, newdata = data.frame(x = x), type = "response"), add = TRUE, col = "red")