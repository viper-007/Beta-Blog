# Normal distributions with different number of observations and different standard deviations

set.seed(12)

# N(0, 1); n = 100 / 1,000 / 10,000
random_normal_var1_n100 <- rnorm(n = 100,
                                 mean = 0,
                                 sd = sqrt(1))

random_normal_var1_n1000 <- rnorm(n = 1000,
                                  mean = 0,
                                  sd = sqrt(1))

random_normal_var1_n10000 <- rnorm(n = 10000,
                                   mean = 0,
                                   sd = sqrt(1))

# N(0, 1.1);  n = 100 / 1,000 / 10,000
random_normal_var1.1_n100 <- rnorm(n = 100,
                                   mean = 0,
                                   sd = sqrt(1.1))

random_normal_var1.1_n1000 <- rnorm(n = 1000,
                                    mean = 0,
                                    sd = sqrt(1.1))

random_normal_var1.1_n10000 <- rnorm(n = 10000,
                                     mean = 0,
                                     sd = sqrt(1.1))

# Calculate the confidence intervals
conf_int_var1_n100 <- t.test(random_normal_var1_n100)$conf.int
conf_int_var1_n1000 <- t.test(random_normal_var1_n1000)$conf.int
conf_int_var1_n10000 <- t.test(random_normal_var1_n10000)$conf.int
conf_int_var1.1_n100 <- t.test(random_normal_var1.1_n100)$conf.int
conf_int_var1.1_n1000 <- t.test(random_normal_var1.1_n1000)$conf.int
conf_int_var1.1_n10000 <- t.test(random_normal_var1.1_n10000)$conf.int

# Get the lower and upper boundaries of the confidence intervals
lb_var1_n100 <- t.test(random_normal_var1_n100)$conf.int[1]
ub_var1_n100 <- t.test(random_normal_var1_n100)$conf.int[2]
lb_var1_n1000 <- t.test(random_normal_var1_n1000)$conf.int[1]
ub_var1_n1000 <- t.test(random_normal_var1_n1000)$conf.int[2]
lb_var1_n10000 <- t.test(random_normal_var1_n10000)$conf.int[1]
ub_var1_n10000 <- t.test(random_normal_var1_n10000)$conf.int[2]
lb_var1.1_n100 <- t.test(random_normal_var1.1_n100)$conf.int[1]
ub_var1.1_n100 <- t.test(random_normal_var1.1_n100)$conf.int[2]
lb_var1.1_n1000 <- t.test(random_normal_var1.1_n1000)$conf.int[1]
ub_var1.1_n1000 <- t.test(random_normal_var1.1_n1000)$conf.int[2]
lb_var1.1_n10000 <- t.test(random_normal_var1.1_n10000)$conf.int[1]
ub_var1.1_n10000 <- t.test(random_normal_var1.1_n10000)$conf.int[2]


# Transparent colors
t_col <- function(color,
                  percent = 50,
                  name = NULL)
{
  # color = color name
  # percent = % transparency
  # name = an optional name for the color
  
  # Get RGB values for named color
  rgb.val <- col2rgb(color)
  
  # Make new color using input color as base and alpha set by transparency
  t.col <- rgb(
    rgb.val[1],
    rgb.val[2],
    rgb.val[3],
    max = 255,
    alpha = (100 - percent) * 255 / 100,
    names = name
  )
  
  # Save the color
  invisible(t.col)
}

mycol <- t_col("pink", perc = 50, name = "lt.pink")


# divide window into a 1X3 grid
par(mfrow = c(1, 3))


# Plot first histgram
hist(
  random_normal_var1_n100,
  breaks = 100,
  main = "n = 100",
  xlab = "x",
  xlim = c(-3, 3),
  yaxt = "n",
  ylab = "",
  col = "lightblue",
  border = FALSE
)

# Add the second histogram on top of the first
hist(
  random_normal_var1.1_n100,
  breaks = 100,
  col = mycol,
  border = FALSE,
  add = TRUE
)

# Draw confidence interval of N(0, 1) with n = 100 observation
abline(
  v = lb_var1_n100,
  col = 'blue',
  lwd = 1,
  lty = 2
)

# Draw confidence interval of N(0, 1) with n = 100 observation
abline(
  v = ub_var1_n100,
  col = 'blue',
  lwd = 1,
  lty = 2
)

# Draw confidence interval of N(0, 1.1) with n = 100 observation
abline(
  v = lb_var1.1_n100,
  col = 'red',
  lwd = 1,
  lty = 2
)

# Draw confidence interval of N(0, 1.1) with n = 100 observation
abline(
  v = ub_var1.1_n100,
  col = 'red',
  lwd = 1,
  lty = 2
)

# Add a legend if needed
legend(
  "topleft",
  legend = c("N(0, 1)", "N(0, 1.1)"),
  bty = "n",
  fill = c("lightblue", mycol)
)



# Plot first histogram
hist(
  random_normal_var1_n1000,
  breaks = 100,
  main = "n = 1,000",
  xlab = "x",
  xlim = c(-3, 3),
  yaxt = "n",
  ylab = "",
  col = "lightblue",
  border = FALSE
)

# Add the second histogram on top of the first
hist(
  random_normal_var1.1_n1000,
  breaks = 100,
  col = mycol,
  border = FALSE,
  add = TRUE
)

# Draw confidence interval of N(0, 1) with n = 100 observation
abline(
  v = lb_var1_n1000,
  col = 'blue',
  lwd = 1,
  lty = 2
)

# Draw confidence interval of N(0, 1) with n = 100 observation
abline(
  v = ub_var1_n1000,
  col = 'blue',
  lwd = 1,
  lty = 2
)

# Draw confidence interval of N(0, 1.1) with n = 100 observation
abline(
  v = lb_var1.1_n1000,
  col = 'red',
  lwd = 1,
  lty = 2
)

# Draw confidence interval of N(0, 1.1) with n = 100 observation
abline(
  v = ub_var1.1_n1000,
  col = 'red',
  lwd = 1,
  lty = 2
)

# Add a legend if needed
legend(
  "topright",
  legend = c("CI95 N(0, 1)", "CI95 N(0, 1.1)"),
  col = c("blue", "red"),
  lty = 2:2,
  bty = "n"
)


# Plot first histogram
hist(
  random_normal_var1_n10000,
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
  random_normal_var1.1_n10000,
  breaks = 100,
  col = mycol,
  border = FALSE,
  add = TRUE
)

# Draw confidence interval of N(0, 1) with n = 100 observation
abline(
  v = lb_var1_n10000,
  col = 'blue',
  lwd = 1,
  lty = 2
)

# Draw confidence interval of N(0, 1) with n = 100 observation
abline(
  v = ub_var1_n10000,
  col = 'blue',
  lwd = 1,
  lty = 2
)

# Draw confidence interval of N(0, 1.1) with n = 100 observation
abline(
  v = lb_var1.1_n10000,
  col = 'red',
  lwd = 1,
  lty = 2
)

# Draw confidence interval of N(0, 1.1) with n = 100 observation
abline(
  v = ub_var1.1_n10000,
  col = 'red',
  lwd = 1,
  lty = 2
)