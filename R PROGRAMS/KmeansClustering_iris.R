data(iris)
copy <- iris[, -5] 
res <- kmeans(copy, 3)
plot(iris[c("Petal.Length", "Petal.Width")], col = res$cluster)
table(iris$Species, res$cluster)