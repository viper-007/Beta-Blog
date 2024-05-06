# Error bar chart

# The plot and arrows functions are used to create error bars.
# The vectors x, y and error represent the data points and the error bars.


# Dummy data
x <- c(1, 2, 3, 4)
y <- c(10, 15, 13, 18)
error <- c(1, 2, 0.5, 1.5)

# Create error bar chart
plot(x, y, ylim = c(8, 20), pch = 16, xlab = "X Axis", ylab = "Y Axis", main = "Error Bar Chart")
arrows(x, y - error, x, y + error, angle = 90, code = 3, length = 0.1)
