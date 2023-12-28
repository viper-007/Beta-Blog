# rgb function used for transparend colors

set.seed(123)

x <- runif(10)*10
y <- runif(10)*10

plot(x, y, pch=16)

red <- 255
green <-0
blue <- 0
alpha <- 75

redtrans <- rgb(red, green, blue, alpha, maxColorValue=255)
polygon(c(2, 5, 8), c(2, 10, 2), col=redtrans)
