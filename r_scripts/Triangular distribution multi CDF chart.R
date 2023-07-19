# Triangular Distribution - Multi CDF


# Assign parameters (min = a, max = b, mode = c) 
a <- 0
b <- 4
c1 <- 0.5  # mode of 1st triangle
c2 <- 2    # mode of 1st triangle
c3 <- 3    # mode of 1st triangle
inc <- 0.1

# adjust range and increment
x <- seq(a, b, by = inc)


# Cumulative Distribution Function (CDF)
cdf1 <- ifelse(x < c1, (x - a)^2 / ((c1 - a) * (b - a)), 1 - (b - x)^2 / ((b - c1) * (b - a)))
cdf2 <- ifelse(x < c2, (x - a)^2 / ((c2 - a) * (b - a)), 1 - (b - x)^2 / ((b - c2) * (b - a)))
cdf3 <- ifelse(x < c3, (x - a)^2 / ((c3 - a) * (b - a)), 1 - (b - x)^2 / ((b - c3) * (b - a)))


# Create an empty plot for CDF
par(bty = "n")  # without box around the plot area
plot(a, b, type = "n", main = "Cumulative distribution function (CDF)", xlab = "x", ylab = "F(x)", xlim = c(a, b), ylim = c(0, 1))

# Plot CDF of 1st triangle
polygon(c(x, rev(x)), c(cdf1, rep(0, length(cdf1))), col = adjustcolor("blue", alpha.f = 0.5), border = NA)

# Plot CDF of 2nd triangle
polygon(c(x, rev(x)), c(cdf2, rep(0, length(cdf2))), col = adjustcolor("purple", alpha.f = 0.5), border = NA)

# Plot CDF of 3rd triangle
polygon(c(x, rev(x)), c(cdf3, rep(0, length(cdf3))), col = adjustcolor("lightblue", alpha.f = 0.5), border = NA)

# Add PDF legend
legend("topleft", legend = c("CDF(0, 4, 0.5)", "CDF(0, 4, 2)", "CDF(0, 4, 3)"), fill = c("blue", "purple", "lightblue"), border = NA, cex = 0.6, bty = "n")


# Use the function rgb() to specify a color with an alpha transparency, e.g. col = rgb(1, 0, 0, 0.5)
# Use the function adjustcolor("red", alpha.f=0.5) for the same result
# alpha.f = (100 - 'transparency in %') * 255 / 100,