# US Income 2006

# Parameters
loc <- 10.2677
scale <- 0.73796
thresh <- 0
median <- 28788


# Define transparent fill color
red <- 173
green <- 216
blue <- 230
alpha <- 50
lightblue_trans <- rgb(red, green, blue, alpha, maxColorValue=255)


# Create PDF plots 
curve(dlnorm(x, meanlog=loc, sdlog=scale), from=0, to=100000, col="lightblue", main = "US Income 2006", xlab = "Income per capita (USD 2006)", ylab = "Density")

# Find the x and y coordinates for the polygon
x_polygon <- seq(0, median, length.out = 1000)
y_polygon <- dlnorm(x_polygon, meanlog=loc, sdlog=scale)

# Add the filled area below the curve up to the median
polygon(c(x_polygon, median), c(y_polygon, 0), col = lightblue_trans, border = NA)

# Add a vertical line at the median
abline(v = median, col = "red", lty = 2)


# Add a vertical line at the threshold
abline(v = thresh, col = "red", lty = 2)

# Add a vertical line at the median value of 28,788
abline(v = median, col = "red", lty = 2)



# Add legend 
legend("topright", legend = c("Mean: 10.2677", "Standard deviation: 0.73796", "Median: 28,788","50% area"), fill = c("white", "white", "white", lightblue_trans), border = NA, cex = 0.6, bty = "n")


# Add labeling
text(4e+04, 0, "28,788", col = "red")
text(1.5e+04, 1.25e-05, "0.5", col = "red")




