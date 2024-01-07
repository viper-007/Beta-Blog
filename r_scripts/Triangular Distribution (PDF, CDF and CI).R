# Triangular Distribution (PDF, CDF and CI)

library(EnvStats)
# Probability density function (PDF): dtri(q, min, max, mode)
# Cumulative distribution function (CDF): ptri(q, min, max, mode)
# Quantile function : qtri(q, min, max, mode)
# q: vector of quantiles, missing values (NA) are allowed


# Define the parameters of the triangular distribution
min <- 45
max <- 150
mode <- 60


# Expected value
expected_value <- (min + max + mode) / 3

# Probability of the expected value
probability <- ptri(expected_value, min, max, mode)

# Probability density function (PDF)
dtri(x = 60, min = 45, max = 150, mode = 60) 

# Cumulative distribution function (CDF)
ptri(q = 60, min = 45, max = 150, mode = 60)

# Probability density function (PDF)
dtri(x = 85, min = 45, max = 150, mode = 60) 

# Cumulative distribution function (CDF)
ptri(q = 85, min = 45, max = 150, mode = 60)


# The qtri() function takes four arguments:
# 1) the quantile for the lower/upper bound,
# 2) the minimum value,
# 3) the maximum value, and
# 4) the mode.
# For a 95% confidence interval use the quantile 0.025 for the lower bound and the quantile 0.975 for the upper bound.

# Calculate the 95% confidence interval boundaries
lower_bound <- qtri(0.025, min, max, mode)
upper_bound <- qtri(0.975, min, max, mode)
confidence_interval <- c(lower_bound, upper_bound)


# Print results
cat("Min:", min, "\n")
cat("Max:", max, "\n")
cat("Mode:", mode, "\n")
cat("Expected value (mean):", expected_value, "\n")
cat("Probability of the expected value:", probability, "\n")
cat("Confidence Interval:", confidence_interval, "\n")