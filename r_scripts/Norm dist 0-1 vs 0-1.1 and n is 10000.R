# Normal distributions with different number of observations and standard deviations

set.seed(12)

# N(0, 1)
random_normal_1 <- rnorm(n = 10000,
                         mean = 0,
                         sd = sqrt(1))

# N(0, 1.1)
random_normal_2 <- rnorm(n = 10000,
                         mean = 0,
                         sd = sqrt(1.1))

# Transparent colors
t_col <- function(color, percent = 50, name = NULL)
{
  # color = color name
  # percent = % transparency
  # name = an optional name for the color
  
  # Get RGB values for named color
  rgb.val <- col2rgb(color)
  
  # Make new color using input color as base and alpha set by transparency
  t.col <- rgb(rgb.val[1], rgb.val[2], rgb.val[3],
               max = 255,
               alpha = (100 - percent) * 255 / 100,
               names = name)
  
  # Save the color
  invisible(t.col)
}

mycol <- t_col("pink", perc = 50, name = "lt.pink")

# Plot first histogram
hist(
  random_normal_1,
  breaks = 100,
  main = "n = 10,000",
  xlab = "x",
  xlim = c(-3, 3),
  yaxt = "n",
  ylab = "",
  col = "lightblue",
  border = FALSE
)

# Add the second histogram on top of the first
hist(
  random_normal_2,
  breaks = 100,
  col = mycol,
  border = FALSE,
  add = TRUE
)

# Add a legend if needed
legend(
  "topright",
  legend = c("N(0, 1)", "N(0, 1.1)"),
  bty="n",
  fill = c("lightblue", mycol)
)
