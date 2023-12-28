# Parameters
loc <- 10.2677
scale <- 0.73796
thresh <- 0

# Generate a sequence of values for which to calculate the PDF
x_values <- seq(0, 100000, length.out = 1000)

# Calculate the PDF using dlnorm
pdf_values <- dlnorm(x_values, meanlog = loc, sdlog = scale)

# Plot the PDF
plot(x_values, pdf_values, type = "l", col = "green", lwd = 2,
     xlab = "USD", ylab = "Probability Density",
     main = "US Income 2006")

# Add a vertical line at the threshold
abline(v = thresh, col = "red", lty = 2)

# Add legend
legend("topright", legend = c("Log-Normal PDF", "Threshold"),
       col = c("green", "red"), lty = c(1, 2), lwd = c(2, 2))
