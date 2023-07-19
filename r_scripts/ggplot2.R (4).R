# ggplot2 (4)

library(ggplot2)

head(PlantGrowth)

# Basic box plot from a numeric vector
x <- "1"
y <- rnorm(100)
qplot(x, y, geom="boxplot")

# Basic box plot from data frame
qplot(group, weight, data = PlantGrowth, 
      geom=c("boxplot"))

# Dot plot
qplot(group, weight, data = PlantGrowth, geom=c("dotplot"), stackdir = "center", binaxis = "y")

# Violin plot
qplot(group, weight, data = PlantGrowth, geom=c("violin"), trim = FALSE)

# Box plot from a data frame

# Add jitter and change fill color by group
qplot(group, weight, data = PlantGrowth, geom=c("boxplot", "jitter"), fill = group)

# Dot plot
qplot(group, weight, data = PlantGrowth, geom = "dotplot", stackdir = "center", binaxis = "y", color = group, fill = group)

