# Generate a hypothetical dataset
set.seed(123)
x1 <- rnorm(100)
x2 <- rnorm(100)
y <- 2*x1 + 3*x2 + rnorm(100, mean = 0, sd = 0.5)  # Simulating linear relationship with noise
data <- data.frame(x1, x2, y)

# Perform correlation analysis
correlation_matrix <- cor(data)

# Print correlation matrix
print("Correlation Matrix:")
print(correlation_matrix)

# Fit a linear regression model
lm_model <- lm(y ~ ., data = data)

# Print linear regression summary
summary(lm_model)

# Extract coefficients (m and c) of the linear equation y = mx + c
coefficients <- coef(lm_model)
m1 <- coefficients["x1"]
m2 <- coefficients["x2"]
c <- coefficients["(Intercept)"]

# Print linear equation
print("Linear Equation:")
cat("y =", m1, "* x1 +", m2, "* x2 +", c)

