# Generate some data
x <- seq(0, 10, length.out = 100)
y <- 2*x

# Plot the curve
plot(x, y, type = "l", xlab = "X", ylab = "Y", main = "Area below Curve")

# Create a polygon to fill the area below the curve
polygon(c(x, rev(x)), c(y, rep(0, length(y))), col = "lightblue")
