# Calculate confidence interval with function t.test from core package stats

# Sample data
data <- c(23, 28, 32, 27, 25, 30, 31, 29, 26, 24)

# Calculate the confidence interval
# The function t.test performs the Student's t-Tests on vectors of data
# By default conf.level=0.95
result <- t.test(data)

# Extract the confidence interval
confidence_interval <- result$conf.int

# Get the lower bound and the upper bound of the confidence interval
lower_bound <- result$conf.int[1]
upper_bound <- result$conf.int[2]

# Print lower bound and uppder bound of the confidence interval
cat("Lower bound of the 95% confidence interval:", lower_bound, "\n")
cat("Upper bound of the 95% confidence interval:", upper_bound, "\n")

# Plot histogram
plot(data, main = "Histogram", xlab = "Data", ylab = "Value")

# Draw lower bound and upper bound of the confidence interval
abline(h = lower_bound, col = 'red', lwd = 1, lty = 2)
text(x = 1.5, y = lower_bound+0.25, labels = "lower bound", col = "#4D4D4D")
abline(h = upper_bound, col = 'red', lwd = 1, lty = 2)
text(x = 1.5, y = upper_bound+0.25, labels = "upper bound", col = "#4D4D4D")