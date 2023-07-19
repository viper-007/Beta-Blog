# Triangular Distribution

# Assign parameters (min = a, max = b, mode = c)
a <- 0
b <- 4
c <- 0.5
inc <- 0.1

# adjust range and increment
x <- seq(a, b, by = inc)

# Probability Density Function (PDF)
pdf <- ifelse(x < c, 2 * (x - a) / ((c - a) * (b - a)), 2 * (b - x) / ((b - c) * (b - a)))

# Cumulative Distribution Function (CDF)
cdf <- ifelse(x < c, (x - a)^2 / ((c - a) * (b - a)), 1 - (b - x)^2 / ((b - c) * (b - a)))


# divide window into a 1x2 grid
par(mfrow=c(1,2))


# Plot PDF
plot(x, pdf, col = 'blue', type = 'l',
main = "Probability density function (PDF)", ylab = "f(x)", ylim = c(0, 0.5))

# PDF labeling
abline(v = a, col = 'grey', lwd = 1, lty = 2)
text(x = a, y = 0, labels = "a", col = "grey60")
abline(v = c, col = 'grey', lwd = 1, lty = 2)
text(x = c, y = 0, labels = "c", col = "grey60")
abline(v = b, col = 'grey', lwd = 1, lty = 2)
text(x = b, y = 0, labels = "b", col = "grey60")


# Plot CDF
plot(x, cdf, col = 'blue', type = 'l',
     main = "Cumulative distribution function (CDF)", ylab = "F(x)", ylim = c(0, 1))

# CDF labeling
abline(v = a, col = 'grey', lwd = 1, lty = 2)
text(x = a, y = 0, labels = "a", col = "grey")
abline(v = c, col = 'grey', lwd = 1, lty = 2)
text(x = c, y = 0, labels = "c", col = "grey60")
abline(v = b, col = 'grey', lwd = 1, lty = 2)
text(x = b, y = 0, labels = "b", col = "grey60")
F_c <- (1 - (b - c)^2 / ((b - c) * (b - a)))
abline(h = F_c, col = 'grey', lwd = 1, lty = 2)
text(x = 0, y = F_c, labels = "F(c)", col = "grey60")
