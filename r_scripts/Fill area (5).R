# Generate some example data
set.seed(123)
data <- rnorm(1000)

# Create a density plot
density_plot <- density(data)

# Plot the density curve
plot(density_plot, main = "Density Plot")

# Find the median
median_value <- median(data)

# Create x and y coordinates for the polygon
x_polygon <- c(density_plot$x[which(density_plot$x <= median_value)], median_value)
y_polygon <- c(density_plot$y[which(density_plot$x <= median_value)], 0)

# Add a filled polygon below the curve up to the median
polygon(x_polygon, y_polygon, col = "lightblue")

# Add a vertical line at the median
abline(v = median_value, col = "red", lty = 2)

# Add legend
legend("topright", legend = c("Density Curve", "Area below curve"), fill = c("black", "lightblue"))
