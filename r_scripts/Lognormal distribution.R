# Lognormal Distribution

# Create PDF plots
curve(dlnorm(x, meanlog=0, sdlog=1), from=0, to=10, col='lightblue', main = "Lognormal distribution", xlab = "x", ylab = "f(x)")


# Add legend
legend("topright", legend = c("PDF(0, 1.00)"), fill = c("lightblue"), border = NA, cex = 0.6, bty = "n")