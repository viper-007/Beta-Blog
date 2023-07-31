# Compute the bootstrap confidence intervall

library(boot)

# View the first row of the iris dataset
head(iris, 1)

# Custom function to find correlation between the petal length and width
corr.fun <- function(data, idx)
{
  df <- data[idx, ]
  # Find the spearman correlation between the 3rd and 4th columns of dataset
  c(cor(df[, 3], df[, 4], method = 'spearman'))
}

# Setting a seed for reproducible results
set.seed(42)

# Call boot function with dataset, correlation function, and no. of rounds
bootstrap <- boot(iris, corr.fun, R = 1000)

# Display result of boot function
bootstrap

# Plot bootstrap sampling distribution
plot(bootstrap)

# Function to find the bootstrap confidence intervals
boot.ci(boot.out = bootstrap,
        type = c("norm", "basic",
                 "perc", "bca"))
