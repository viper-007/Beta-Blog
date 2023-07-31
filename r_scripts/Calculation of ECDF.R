# Calulation of the empirical cumulative distribution function (ECDF) using the sample data
# Example with normal distribution

set.seed(1)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 2))
n <- c(50, 100, 500, 1000)
xseq <- seq(-4, 4, length.out = 100)
for (j in 1:4) {
  x <- rnorm(n[j])
  plot(ecdf(x), main = paste("n = ", n[j]))
  lines(xseq, pnorm(xseq), col = "blue")
}