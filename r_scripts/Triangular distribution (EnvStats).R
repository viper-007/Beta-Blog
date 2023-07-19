# Triangular Distribution (EnvStats)

# Functions
# PDF: dtri(q, a, b, c)
# CDF: ptri(q, a, b, c)
# Quantile function: qtri(p, a, b, c)
# Generates n random deviates: rtri(n, a, b, c)

# Parameters
# q: vector of quantiles
# a: lower limit
# b: upper limit
# c: mode
# p: vector of probabilities
# n: number of observations


library(EnvStats)

# PDF
dtri(60, 45, 150, 60)

# CDF
ptri(60, 45, 150, 60)

# PDF
dtri(85, 45, 150, 60) 

# CDF
ptri(85, 45, 150, 60) 