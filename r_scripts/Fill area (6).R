# Parameters
loc <- 10.2677
scale <- 0.73796
thresh <- 0
median <- 28788

# Create PDF plots 
curve(dlnorm(x, meanlog=loc, sdlog=scale), from=0, to=100000, col="lightblue", main = "US Income 2006", xlab = "Income per capita (USD 2006)", ylab = "Density")

# Find the x and y coordinates for the polygon
x_polygon <- seq(0, median, length.out = 1000)
y_polygon <- dlnorm(x_polygon, meanlog=loc, sdlog=scale)

# Add the filled area below the curve up to the median
polygon(c(x_polygon, median), c(y_polygon, 0), col = "lightblue", border = NA)

# Add a vertical line at the median
abline(v = median, col = "red", lty = 2)

# Add legend
legend("topright", legend = c("Density Curve", "Area below curve"), fill = c("lightblue", "lightblue"), border = NA)
