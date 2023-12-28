# US Income 2006

# Parameters
loc <- 10.2677
scale <- 0.73796
thresh <- 0
median <- 28788

# Create PDF plots 
curve(dlnorm(x, meanlog=10.2677, sdlog=0.73796), from=0, to=100000, col="lightblue", main = "US Income 2006", xlab = "Income per captia (USD 2006)", ylab = "Density")

# Add a vertical line at the threshold
abline(v = thresh, col = "red", lty = 2)

# Add a vertical line at the median value of 28,788
abline(v = median, col = "red", lty = 2)

# Add legend 
legend("topright", legend = c("Mean: 10.2677", "Standard deviation: 0.73796", "Median: 28788"), fill = c("blue", "purple", "lightblue"), border = NA, cex = 0.6, bty = "n")

# Add labeling
text(4e+04, 0, "28,788", col = "red")
text(1.5e+04, 1.25e-05, "0.5", col = "red")


# Fill area for values lower or equal to median

# Fill parameters
x <- c(0, 0, median, median)
y <- c(0, 2.5e-05, 2.5e-05, 0)

# Define transparent fill color
red <- 173
green <- 216
blue <- 230
alpha <- 50
redtrans <- rgb(red, green, blue, alpha, maxColorValue=255)

# Draw polygon
polygon(x, y, col = redtrans)

