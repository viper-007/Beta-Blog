# Triangular Distribution (PDF, CDF and CI)

library(EnvStats)

# Assign parameters (min = a, max = b, mode = c)
a <- 45
b <- 150
c <- 60
inc <- 0.1

# adjust range and increment
x <- seq(a, b, by = inc)

# Probability Density Function (PDF)
pdf <- ifelse(x < c, 2 * (x - a) / ((c - a) * (b - a)), 2 * (b - x) / ((b - c) * (b - a)))

# Cumulative Distribution Function (CDF)
cdf <- ifelse(x < c, (x - a)^2 / ((c - a) * (b - a)), 1 - (b - x)^2 / ((b - c) * (b - a)))

# Calculate expected value
expected_value <- (a+b+c) / 3

# Calculate probability of the expected value
probability_expected_value <- ptri(q = 85, min = a, max = b, mode = c) 
  
  
# Calculate the 95% confidence interval
lower_bound <- qtri(0.025, a, b, c)
upper_bound <- qtri(0.975, a, b, c)
confidence_interval <- c(lower_bound, upper_bound)
lb <- round(lower_bound, digits = 0)
ub <- round(upper_bound, digits = 0)


# divide window into a 1x2 grid
par(mfrow=c(1,2))


# Plot PDF
plot(x, pdf, col = 'blue', type = 'l', main = "PDF", xlab ='$1k', ylab = "f(x)", ylim = c(0, 0.02), axes = FALSE)
# X-axis
axis(1, at = c(45, 60, 85, 50), cex.axis = 0.7)
# Y-axis
axis(2, at = c(0, 0.02), cex.axis = 0.7)
# PDF labeling
abline(v = a, col = 'grey', lwd = 1, lty = 2)
abline(v = c, col = 'grey', lwd = 1, lty = 2)
abline(v = b, col = 'grey', lwd = 1, lty = 2)
abline(v = 85, col = 'lightblue', lwd = 1, lty = 2)
abline(h = 0.019, col = 'grey', lwd = 1, lty = 2)
abline(v = lower_bound, col = 'purple', lwd = 1, lty = 2)
abline(v = upper_bound, col = 'purple', lwd = 1, lty = 2)
axis(1, at = c(lb, ub), col='purple', cex.axis = 0.7)


# Plot CDF
plot(x, cdf, col = 'blue', type = 'l', main = "CDF", xlab ='$1k', ylab = "F(x)", ylim = c(0, 1), axes = FALSE)
# X-axis
axis(1, at = c(45, 60, 85, 150), cex.axis = 0.7)
axis(1, at = c(lb, ub), col='purple', cex.axis = 0.7)
# Y-axis
axis(2, at = c(0, 0.14, 0.55, 1.0), cex.axis = 0.5)
# CDF labeling
abline(v = a, col = 'grey', lwd = 1, lty = 2)
abline(v = c, col = 'grey', lwd = 1, lty = 2)
abline(v = 85, col = 'lightblue', lwd = 1, lty = 2)
abline(v = b, col = 'grey', lwd = 1, lty = 2)
abline(h = 0.14, col = 'grey', lwd = 1, lty = 2)
abline(h = 0.55, col = 'lightblue', lwd = 1, lty = 2)
abline(h = 1.0, col = 'grey', lwd = 1, lty = 2)
abline(v = lower_bound, col = 'purple', lwd = 1, lty = 2)
abline(v = upper_bound, col = 'purple', lwd = 1, lty = 2)


# Print results
cat("Min:", a, "\n")
cat("Max:", b, "\n")
cat("Mode:", c, "\n")
cat("Expected value:", expected_value, "\n")
cat("Probability of the expected value:", probability_expected_value, "\n")
cat("Confidence Interval [lower bound]:", lb, "\n")
cat("Confidence Interval [upper band]:", ub, "\n")