# Multivariate Statistic (Quartiles)

# generate 100 standard normal observations
set.seed(1)
n <- 100
x <- rnorm(n)

# nonparametric bootstrap (using ... to enter 'probs' argument)
npbs <- np.boot(x = x,
                statistic = quantile,
                probs = c(0.25, 0.5, 0.75))
npbs

# bootstrap distribution
par(mfrow = c(1, 3))
for (j in 1:3) {
  hist(
    npbs$boot.dist[, j],
    xlab = "t*",
    ylab = "Density",
    main = paste0("Bootstrap Distribution", ": Q", j)
  )
  abline(v = npbs$t0[j],
         lty = 2,
         col = "red")
  legend(
    "topright",
    paste0("t0[", j, "]"),
    lty = 2,
    col = "red",
    bty = "n"
  )
}