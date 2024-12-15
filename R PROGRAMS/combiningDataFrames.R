# Creating sample data frames
df1 <- data.frame(ID = 1:3, Name = c("Alice", "Bob", "Charlie"))
df2 <- data.frame(ID = 4:6, Name = c("David", "Emma", "Frank"))

# Row-wise combination
combined_df_row <- rbind(df1, df2)
print("Combined Data Frame (Row-wise):")
print(combined_df_row)

# Column-wise combination
combined_df_col <- cbind(df1, df2$Name)
print("Combined Data Frame (Column-wise):")
print(combined_df_col)

