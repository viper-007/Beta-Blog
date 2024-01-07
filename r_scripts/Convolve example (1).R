# Simple convolution example

library(stats)
# The function "convolve" from the package "stats" uses Fast Fourier Transform to compute the convolutions of two sequences.


# Vectors
x <- c(1, 2, 3)
y <- c(4, 5, 6)
z <- c(7, 8, 9)

# Perform folding
result <- convolve(x, y)
result <- convolve(result, z)

result_1 <- convolve(x, y, type = "open")
result_1 <- convolve(result_1, z, type = "open")




# Print result
print(result)
print(result_1)
