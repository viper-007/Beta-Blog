# Data
set.seed(3)
y <- rnorm(150)

# Density estimation
den <- density(y)

# Plot
plot(den)

# Area between -1 and 1
value1 <- -1
value2 <- 1

# Lower and higher indices on the X-axis
l <- min(which(den$x >= value1))
h <- max(which(den$x < value2))

polygon(c(den$x[c(l, l:h, h)]),
        c(0, den$y[l:h], 0),
        col = "slateblue1") 


