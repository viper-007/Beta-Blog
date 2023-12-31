# PDF and CDF of normal distribution


# Set the mean and standard deviation of the normal distribution
mean_value <- 0
sd_value <- 1

# Define transparent fill color
red <- 173
green <- 216
blue <- 230
alpha <- 50
lightblue_trans <- rgb(red, green, blue, alpha, maxColorValue=255)

# Generate a sequence of values for the x-axis
x_values <- seq(-4, 4, 0.1)

# Calculate the PDF and CDF values
pdf_values <- dnorm(x_values, mean = mean_value, sd = sd_value)
cdf_values <- pnorm(x_values, mean = mean_value, sd = sd_value)


par(mfrow = c(2, 1))  # Set up a 2x1 grid of plots

# Plot the PDF
plot(x_values, pdf_values, type = 'l', col = 'lightblue', lwd = 2,
     main = 'Normal Distribution – PDF',
     xlab = 'X', ylab = 'Density')

abline(v = 1.5, col = 'purple', lty = 2)  # Add vertical line at x=1.5

# Fill the area under the PDF curve from x=0 to x=1.5
polygon(c(0, x_values[x_values <= 1.5], 1.5), 
        c(0, pdf_values[x_values <= 1.5], 0), 
        col = lightblue_trans, border = NA)

grid()

# Add labeling
text(2, 0.2, "x=1.5", col = "purple")
text(0, 0.1, "CDF(1.5)", col = "purple")


# Plot the CDF
plot(x_values, cdf_values, type = 'l', col = 'lightblue', lwd = 2,
     main = 'Normal Distribution – CDF',
     xlab = 'X', ylab = 'Cumulative Probability')

abline(v = 1.5, col = 'purple', lty = 2)  # Add vertical line at x=1.5
abline(h = pnorm(1.5, mean = mean_value, sd = sd_value), col = 'purple', lty = 2)  # Add horizontal line at CDF(x=1.5)

grid()


# Calculate CDF(x=1.5)
CDF_x_1.5 <- pnorm(1.5, mean = mean_value, sd = sd_value)

# Round the result to two digits after the decimal point
rounded_CDF_x_1.5 <- round(CDF_x_1.5, digits = 2)

# Two strings to be combined
string1 <- "CDF(1.5)="
string2 <- as.character(rounded_CDF_x_1.5)

# Combine the two strings
composed_string <- paste(string1, string2)

# Add labeling
text(2, 0.4, "x=1.5", col = "purple")
text(-2, 0.8, composed_string, col = "purple")

