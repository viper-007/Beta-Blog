# We are simulating x with a variance of 100, and so a standard deviation of 10.
# If we take a sample of size n=100, the true standard error, which measures variability in the sample mean in repeated samples, is 1.

library(boot)

set.seed(1)
n <- 100
sigma <- 10
x <- sigma * rnorm(n)

bootmean <- function(d, i)
  mean(d[i])

bs <- boot(x, bootmean, R = 1000, stype = "i")
print(bs)

