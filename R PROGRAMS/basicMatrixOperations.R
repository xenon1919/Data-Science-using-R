# Matrix creation
mat1 <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE) # creates a 3x4 matrix filled by row
mat2 <- matrix(1:12, nrow = 3, ncol = 4, byrow = FALSE) # creates a 3x4 matrix filled by column

# Matrix addition
mat_sum <- mat1 + mat2

# Matrix subtraction
mat_diff <- mat1 - mat2

# Element-wise multiplication
mat_product <- mat1 * mat2

# Matrix multiplication
mat_mult <- mat1 %*% t(mat2)  # Use %*% for matrix multiplication

# Transpose of a matrix
mat_transpose <- t(mat1)

# Inverse of a square matrix
if (nrow(mat1) == ncol(mat1)) {
  mat_inverse <- solve(mat1)
} else {
  cat("Matrix is not square, inverse cannot be computed.\n")
  mat_inverse <- NULL
}

# Determinant of a square matrix
if (nrow(mat1) == ncol(mat1)) {
  mat_det <- det(mat1)
} else {
  cat("Matrix is not square, determinant cannot be computed.\n")
  mat_det <- NULL
}

