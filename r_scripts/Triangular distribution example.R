# Triangular distribution example

library(triangle)

# Set the parameters of the triangle distribution
minimum <- 45
maximum <- 150
mode <- 60

# Number of simulation runs
num_simulations <- 10000

# Generate random samples from the triangle distribution
samples <- rtriangle(n = num_simulations, a = minimum, b = maximum, c = mode)

# Plot the histogram of the generated samples
hist(samples, prob = TRUE, col = 'lightblue', main = 'Monte Carlo Simulation of Triangle Distribution', xlab = 'Value', ylab = 'Probability Density')

# Plot the theoretical probability density function (PDF) for comparison
x <- seq(minimum, maximum, length.out = 1000)
pdf <- ifelse(x <= mode, 2 * (x - minimum) / ((maximum - minimum) * (mode - minimum)), 2 * (maximum - x) / ((maximum - minimum) * (maximum - mode)))
lines(x, pdf, col = 'red', lwd = 2)

# Add a legend
legend('topright', legend = c('Monte Carlo Simulation', 'Triangle Distribution PDF'), col = c('lightblue', 'red'), lwd = 2)

# Show the plot

