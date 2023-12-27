# Log Normal Probability Density Function (dlnorm)
x_dlnorm <- seq(0, 10, by = 0.01)                       # Specify x-values for dlnorm function
y_dlnorm <- dlnorm(x_dlnorm)                            # Apply dlnorm function
plot(y_dlnorm)                                          # Plot dlnorm values


# Log Normal Cumulative Distribution Function (plnorm)
x_plnorm <- seq(0, 10, by = 0.01)                       # Specify x-values for plnorm function
y_plnorm <- plnorm(x_plnorm)                            # Apply plnorm function
plot(y_plnorm)                                          # Plot plnorm values


# Generating Random Numbers (rlnorm)
set.seed(123)                                           # Set seed for reproducibility
N <- 10000                                              # Specify sample size
y_rlnorm <- rlnorm(N)                                   # Draw N log normally distributed values
hist(y_rlnorm,                                          # Plot of randomly drawn log normal density
     breaks = 100,
     main = "")