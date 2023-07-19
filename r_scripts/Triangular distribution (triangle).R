# Triangular Distribution (triangle)

# Functions
# PDF: dtriangle(q, a, b, c)
# CDF: ptriangle(q, a, b, c)
# Quantile function: qtriangle(p, a, b, c)
# Generates n random deviates: rtriangle(n, a, b, c)

# Parameters
# q: vector of quantiles
# a: lower limit
# b: upper limit
# c: mode
# p: vector of probabilities
# n: number of observations


library(triangle)

# PDF
dtriangle(60, 45, 150, 60)

# CDF
ptriangle(60, 45, 150, 60)

# PDF
dtriangle(85, 45, 150, 60) 

# CDF
ptriangle(85, 45, 150,  60) 


# Set the parameters of the triangle distribution
a <- 0  # min
b <- 10 # max
c <- 5  # mode

# Generate random numbers from a triangle distribution
n <- 1000  # Number of samples
triangle_data <- rtriangle(n, a, b, c)

# Plot the triangle distribution
hist(triangle_data, freq = FALSE, breaks = "FD", col = "lightblue", main = "Probability Density Function (PDF)", xlab = "x", ylab = "f(x)")