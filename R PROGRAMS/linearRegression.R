# Generate sample data
set.seed(123)
x <- 1:100
y <- 3*x + rnorm(100, mean = 0, sd = 10)  # Simulating linear relationship with some noise

# Perform simple linear regression
lm_model <- lm(y ~ x)

# Summary of the linear regression model
summary(lm_model)

# Calculate predicted values
predicted_values <- predict(lm_model)

# Calculate R-squared
r_squared <- summary(lm_model)$r.squared

# Calculate Root Mean Squared Error (RMSE)
rmse <- sqrt(mean((predicted_values - y)^2))

# Print metrics
cat("R-squared:", r_squared, "\n")
cat("Root Mean Squared Error (RMSE):", rmse, "\n")

# Plotting the data and the regression line
plot(x, y, main = "Simple Linear Regression", xlab = "X", ylab = "Y")
abline(lm_model, col = "red")