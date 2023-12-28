# Data
set.seed(3)
y <- rnorm(150)

# Density estimation
den <- density(y)

# Plot
plot(den)

# Fill area for values greater or equal to 1
value <- 1

polygon(c(den$x[den$x >= value ], value),
        c(den$y[den$x >= value ], 0),
        col = "slateblue1",
        border = 1) 


