# Set the parameters for the lognormal distribution
mean_ln <- 13.7
sd_ln <- 1.33

# Create a sequence of probabilities (0 to 1) for the quantiles
probabilities <- seq(0.001, 0.999, by = 0.001)

# Calculate the quantiles using the lognormal distribution parameters
quantiles <- qlnorm(probabilities, meanlog = mean_ln, sdlog = sd_ln)

# Plot the loss exceedance curve with a logarithmic y-axis and grid
plot(quantiles, probabilities, type = "l", col = "blue",
     xlab = "Loss Quantile", ylab = "Probability",
     main = "Loss Exceedance Curve", lwd = 2, log = "y")

# Add a grid
grid()
