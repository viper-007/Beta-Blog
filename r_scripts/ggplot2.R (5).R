# ggplot2 (5)

library(ggplot2)

set.seed(1234)
mydata = data.frame(
  sex = factor(rep(c("F", "M"), each=200)),
  weight = c(rnorm(200, 55), rnorm(200, 58)))
head(mydata)

# Basic histogram
qplot(weight, data = mydata, geom = "histogram")

# Change histogram fill color by group (sex)
qplot(weight, data = mydata, geom = "histogram", fill = sex)

# Basic density plot
qplot(weight, data = mydata, geom = "density")

# Change density plot line color by group (sex)
# change line type
qplot(weight, data = mydata, geom = "density", color = sex, linetype = sex)

qplot(weight, data = mydata, geom = "density", xlab = "Weight (kg)", ylab = "Density", main = "Density plot of Weight")