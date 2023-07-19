# ggplot2

library(ggplot2)

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x

y <- x^3
y

qplot(x, y)

qplot(rnorm(100))

