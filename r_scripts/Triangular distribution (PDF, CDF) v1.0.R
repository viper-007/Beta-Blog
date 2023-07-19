# Triangular Distribution

library(ggplot2)

# Assign parameters (min = a, max = b, mode = c)
a <- 0
b <- 4
c <- 0.5
inc <- 0.01

# adjust range and increment
x <- seq(a, b, by = inc)  

# Probability Density Function (PDF)
pdf <- ifelse(x < c, 2 * (x - a) / ((c - a) * (b - a)), 2 * (b - x) / ((b - c) * (b - a)))

# Cumulative Distribution Function (CDF)
cdf <- ifelse(x < c, (x - a)^2 / ((c - a) * (b - a)), 1 - (b - x)^2 / ((b - c) * (b - a)))


# Create data frame with x, pdf, and cdf variables
df <- data.frame(x = x, pdf = pdf, cdf = cdf)

# Plot PDF chart
pdf_plot <- ggplot(df, aes(x = x, y = pdf)) +
  geom_line() +
  labs(x = "x", y = "f(x)") +
  ggtitle("Triangle Distribution PDF")

# Plot CDF chart
cdf_plot <- ggplot(df, aes(x = x, y = cdf)) +
  geom_line() +
  labs(x = "x", y = "F(x)") +
  ggtitle("Triangle Distribution CDF")


# Display the plots
pdf_plot
cdf_plot
