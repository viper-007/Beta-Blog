# Monte Carlo simulation of triangular distribution example

library(triangle)

# Set the parameters of the triangle distribution
minimum <- 45
maximum <- 150
mode <- 60

# Number of simulation runs
num_simulations <- 10000

# Generate random samples from the triangle distribution
samples <- rtriangle(n = num_simulations, a = minimum, b = maximum, c = mode)

# Calculate the expected value (mean) from the generated samples
expected_value <- mean(samples)

# Print the result
cat("Monte Carlo Estimated Expected Value:", expected_value, "\n")
