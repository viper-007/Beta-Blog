library(nptest)

# generate 100 standard normal observations
set.seed(1)
n <- 100
x <- rnorm(n)

# nonparametric bootstrap
npbs <- np.boot(x = x, statistic = median)
npbs

# check t0, SE, and bias
median(x)                          # t0
sd(npbs$boot.dist)                 # SE
mean(npbs$boot.dist) - npbs$t0     # Bias

# bootstrap distribution
hist(npbs$boot.dist,
     xlab = "t*",
     ylab = "Density",
     main = "Bootstrap Distribution")

# Observed media
abline(v = npbs$t0,
       lty = 2,
       col = "red")

# CI 95% lower boundary
abline(v = npbs$bca[2, 1],
       lty = 2,
       col = "blue")

# CI 95% upper boundary
abline(v = npbs$bca[2, 2],
       lty = 2,
       col = "blue")

legend(
  "topleft",
  legend = c("t0", "CI 95%"),
  col = c("red", "blue"),
  lty = 2,
  bty = "n"
)
