# Generate sample data
set.seed(123)
x1 <- 1:100
x2 <- rnorm(100)
y <- 2*x1 + 3*x2 + rnorm(100, mean = 0, sd = 10)  # Simulating linear relationship with noise

# Perform multiple linear regression
lm_model <- lm(y ~ x1 + x2)

# Summary of the linear regression model
summary(lm_model)

# Calculate predicted values
predicted_values <- predict(lm_model)

# Calculate R-squared
r_squared <- summary(lm_model)$r.squared
cat("R-squared:", r_squared, "\n")

# Plotting the data
plot(y ~ x1, main = "Multiple Linear Regression", xlab = "X1", ylab = "Y")
points(x2, y, col = "red")

# Add regression plane (in 3D, but can be visualized as a plane in 2D) Optional Lines
library(scatterplot3d)
s3d <- scatterplot3d(x1, x2, y, main = "Multiple Linear Regression")
s3d$plane3d(lm_model, col = "blue")