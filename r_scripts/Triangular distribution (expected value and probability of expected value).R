# Function to calculate the probability density function (PDF) of a triangular distribution
dtriang <- function(x, min_val, mode_val, max_val) {
  if (x < min_val || x > max_val) {
    return(0)
  } else if (x <= mode_val) {
    return(2 * (x - min_val) / ((max_val - min_val) * (mode_val - min_val)))
  } else {
    return(2 * (max_val - x) / ((max_val - min_val) * (max_val - mode_val)))
  }
}

# Function to calculate expected value and probability for a triangular distribution
triangular_stats <- function(min_val, mode_val, max_val) {
  # Calculate expected value (mean)
  mean_val <- (min_val + mode_val + max_val) / 3
  
  # Calculate probability of the expected value
  prob_at_mean <- dtriang(mean_val, min = min_val, mode = mode_val, max = max_val)
  
  # Return results
  result <- list(
    expected_value = mean_val,
    probability_at_mean = prob_at_mean
  )
  
  return(result)
}

# Example usage
min_val <- 45
mode_val <- 60
max_val <- 150

result <- triangular_stats(min_val, mode_val, max_val)

# Print results
cat("Expected Value (Mean):", result$expected_value, "\n")
cat("Probability at Expected Value:", result$probability_at_mean, "\n")
