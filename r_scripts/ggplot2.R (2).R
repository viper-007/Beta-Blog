# ggplot2 (2)

library(ggplot2)

# Use data from numeric vectors
x <- 1:10; y = x*x

# Basic plot
qplot(x,y)

# Add line
qplot(x, y, geom=c("point", "line"))

# Use data from a data frame
qplot(mpg, wt, data=mtcars


