# Triangular Distribution - Multi PDF


# Assign parameters (min = a, max = b, mode = c) 
a <- 0
b <- 4
c1 <- 0.5  # mode of 1st triangle
c2 <- 2  # mode of 1st triangle
c3 <- 3  # mode of 1st triangle
inc <- 0.1

# adjust range and increment
x <- seq(a, b, by = inc)

# Probability Density Function (PDF)
pdf1 <- ifelse(x < c1,  2 * (x - a) / ((c1 - a) * (b - a)), 2 * (b - x) / ((b - c1) * (b - a)))
pdf2 <- ifelse(x < c2,  2 * (x - a) / ((c2 - a) * (b - a)), 2 * (b - x) / ((b - c2) * (b - a)))
pdf3 <- ifelse(x < c3,  2 * (x - a) / ((c3 - a) * (b - a)), 2 * (b - x) / ((b - c3) * (b - a)))


# Create an empty plot for PDF
par(bty = "n")  # without box around the plot area
plot(a, b, type = "n", main = "Probability density function (PDF)", xlab = "x", ylab = "f(x)", xlim = c(a, b), ylim = c(a, c1))

# Plot PDF of 1st triangle
polygon(x, pdf1, col = adjustcolor("blue", alpha.f = 0.5), border = NA) 

# Plot PDF of 2nd triangle
polygon(x, pdf2, col = adjustcolor("purple", alpha.f = 0.5), border = NA) 

# Plot PDF of 3rd triangle
polygon(x, pdf3, col = adjustcolor("lightblue", alpha.f = 0.5), border = NA) 


# Add PDF legend
legend("topleft", legend = c("PDF(0, 4, 0.5)", "PDF(0, 4, 2)", "PDF(0, 4, 3)"), fill = c("blue", "purple", "lightblue"), border = NA, cex = 0.6, bty = "n")


# Use the function rgb() to specify a color with an alpha transparency, e.g. col = rgb(1, 0, 0, 0.5)
# Use the function adjustcolor("red", alpha.f=0.5) for the same result
# alpha.f = (100 - 'transparency in %') * 255 / 100,