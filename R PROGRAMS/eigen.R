# Create a sample matrix
mat <- matrix(c(4, 3, 2, 1), nrow = 2)  # Example 2x2 matrix

# Calculate eigenvalues and eigenvectors
eigen_res <- eigen(mat)

# Extract eigenvalues
eigenvalues <- eigen_res$values
print("Eigenvalues:")
print(eigenvalues)

# Extract eigenvectors
eigenvectors <- eigen_res$vectors
print("Eigenvectors:")
print(eigenvectors)