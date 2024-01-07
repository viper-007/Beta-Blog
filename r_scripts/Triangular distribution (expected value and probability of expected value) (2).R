# Install the EnvStats package if necessary
if (!require("EnvStats")) {
  install.packages("EnvStats")
  library("EnvStats")
}

# Define the parameters of the triangular distribution
min <- 45
max <- 150
mode <- 60

# Calculate the expected value
# The expected value of a triangular distribution is the mode (60)
expected_value <- (min + max + mode) / 3

# Calculate the probability of the expected value
probability <- ptri(expected_value, min, max, mode)


# Print results
cat("Expected value:", expected_value, "\n")
cat("Probability of the expected value:", probability, "\n")
