# Function to calculate the inverse CDF of a triangular distribution

inverse_triangular_cdf <- function(p, a, b, c) {
  if (p < 0 || p > 1) {
    stop("Probability p must be between 0 and 1.")
  }
  
  if (a >= b || a >= c || b <= a || b >= c) {
    stop("Invalid parameters: a, b, and c must satisfy a < b < c.")
  }
  
  if (p <= (c - a) / (b - a)) {
    return(a + sqrt(p * (b - a) * (c - a)))
  } else {
    return(b - sqrt((1 - p) * (b - a) * (b - c)))
  }
}

# Example usage
a <- 0   # Lower limit
b <- 5   # Mode (peak)
c <- 10  # Upper limit

# Calculate the inverse CDF (quantile) for a probability of 0.7
p <- 0.7
quantile_value <- inverse_triangular_cdf(p, a, b, c)
print(quantile_value)
