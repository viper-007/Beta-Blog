# Plot Triangular Distribution PDF with right skewed distribution

# x and y coordinates of plot area
x <- c(0, 4)
y <- c(0, 0.5)


x1 <- c(0, 0.5, 4)  # x-coordinates of 1st triangle vertices
y1 <- c(0, 0.5, 0)  # y-coordinates of 1st triangle vertices

x2 <- c(0, 2, 4)  # x-coordinates of 2nd triangle vertices
y2 <- c(0, 0.5, 0)  # y-coordinates of 2nd triangle vertices

x3 <- c(0, 3, 4)  # x-coordinates of 3rd triangle vertices
y3 <- c(0, 0.5, 0)  # y-coordinates of 3rd triangle vertices


# Create an empty plot
par(bty = "n")  # without box around the plot area
plot(x, y, type = "n", main = "Probability density function (PDF)", ylab = "f(x)")

# Draw trinagles
polygon(x1, y1, col = adjustcolor("blue", alpha.f = 0.5), border = NA) 

polygon(x2, y2, col = adjustcolor("purple", alpha.f = 0.5), border = NA) 

polygon(x3, y3, col = adjustcolor("lightblue", alpha.f = 0.5), border = NA)


# Add a legend
legend("topleft", legend = c("PDF(0, 4, 0.5)", "PDF(0, 4, 2)", "PDF(0, 4, 3)"), fill = c("blue", "purple", "lightblue"), border = NA, cex = 0.6, bty = "n")



# Use the function rgb() to specify a color with an alpha transparency, e.g. col = rgb(1, 0, 0, 0.5)
# Use the function adjustcolor("red", alpha.f=0.5) for the same result
# alpha.f = (100 - 'transparency in %') * 255 / 100,

