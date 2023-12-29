# Lifetime of an engine


# Parameters
mean_normal <- 11      # mean of the underlying normal distribution
sd_normal <- 1.3       # standard deviation of the underlying normal distribution
threshold_lifetime <- 12000  # threshold value

# Define transparent fill color
red <- 106
green <- 90
blue <- 205
alpha <- 50
purple_trans <- rgb(red, green, blue, alpha, maxColorValue=255)


# Calculate the probability that the lifetime exceeds the threshold
probability_exceeds_threshold <- 1 - pnorm(log(threshold_lifetime), mean = mean_normal, sd = sd_normal)

# Generate a sequence of values for the x-axis
x_values <- seq(0, 15000, length.out = 1000)


# Calculate the PDF values for the generated x_values
pdf_values <- 1 - dnorm(log(x_values), mean = mean_normal, sd = sd_normal)

# PDF Plot
plot(x_values, pdf_values, type = 'l', col = 'lightblue', lwd = 2,
     main = 'Engine lifetime PDF',
     ylab = 'Probability Desity', xlab = 'Lifetime (hours)')

# Add a vertical line at the threshold
abline(v = threshold_lifetime, col = 'red', lty = 2)

# Add a vertical line at the threshold
abline(v = threshold_lifetime, col = 'red', lty = 2)

# Find the x and y coordinates for the polygon
x_polygon <- c(0, seq(0, threshold_lifetime))
y_polygon <- c(0, 1 - dnorm(log(seq(0, threshold_lifetime)), mean = mean_normal, sd = sd_normal))

# Add the filled area below the curve from 0 to threshold_lifetime
polygon(x_polygon, y_polygon, col = purple_trans, border = NA)

# Add legend
legend("topright", legend = c("CDF", "Threshold", "Threshold Probability"), col = c("lightblue", "red", "purple"), border = NA, lty = c(1, 2, 0), fill = c("white", "white", purple_trans), cex = 0.8, bty = "n")

# Add labeling
text(5000, 0.88, "0.89", col = "purple")


# Calculate the CDF values for the generated x_values
cdf_values <- 1 - pnorm(log(x_values), mean = mean_normal, sd = sd_normal)

# CDF Plot
plot(x_values, cdf_values, type = 'l', col = 'lightblue', lwd = 2,
     main = 'Engine lifetime CDF',
     ylab = 'Cumulative Probability', xlab = 'Lifetime (hours)')

# Add a vertical line at the threshold
abline(v = threshold_lifetime, col = 'red', lty = 2)

# Add a horizontal line at the threshold probability
abline(h = probability_exceeds_threshold, col = 'purple', lty = 2)

# Add legend
legend("bottomright", legend = c("CDF", "Threshold", "Threshold Probability"), col = c("lightblue", "red", "purple"), border = NA, lty = c(1, 2, 2), cex = 0.8, bty = "n")

# Add labeling
text(1000, 0.90, "0.89", col = "purple")


# Print the result
cat("Probability that the lifetime exceeds 12,000 hours:", probability_exceeds_threshold, "\n")