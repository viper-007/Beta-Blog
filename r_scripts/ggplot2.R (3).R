# ggplot2 (3)

library(ggplot2)

data(mtcars)
df <- mtcars[, c("mpg", "cyl", "wt")]
head(df)

# Use data from numeric vectors
x <- 1:10; y = x*x

# Basic plot
qplot(x,y)

# Add line
qplot(x, y, geom=c("point", "line"))

# Use data from a data frame
qplot(mpg, wt, data=mtcars)

# Linear fits by group
qplot(mpg, wt, data = mtcars, color = factor(cyl),geom=c("point", "smooth"))

# Change the color by a continuous numeric variable
qplot(mpg, wt, data = mtcars, colour = cyl)

# Change the color by groups (factor)
df <- mtcars
df[,'cyl'] <- as.factor(df[,'cyl'])
qplot(mpg, wt, data = df, colour = cyl)

# Add lines
qplot(mpg, wt, data = df, colour = cyl, geom=c("point", "line"))