# Monte Carlo simulation

# Threat: SQL Injection Attack
# Quantify Asset Value: Customer Database has a replacement cost of $1,000,000
# Threat Probability: 10% annual probability of a SQL injection attack
# Vulnerability Impact: estimated loss of $500,000
# Risk Exposure = Probability of Threat * Impact of Vulnerability
# Risk Exposure = 0.10 * $500,000 = $50,000


# Load necessary libraries
library(ggplot2)

# Set the seed for reproducibility
set.seed(123)

# Define parameters and distributions
num_simulations <- 10000
threat_probability_distribution <- rnorm(num_simulations, mean = 0.10, sd = 0.02)
vulnerability_impact_distribution <- rnorm(num_simulations, mean = 500000, sd = 100000)

# Run Monte Carlo simulations
risk_exposure <- threat_probability_distribution * vulnerability_impact_distribution

# Analyze results
mean_risk_exposure <- mean(risk_exposure)
std_dev_risk_exposure <- sd(risk_exposure)
percentile_95th <- quantile(risk_exposure, 0.95)

# Print results
cat("Mean Risk Exposure: $", format(mean_risk_exposure, big.mark = ","), "\n")
cat("Standard Deviation: $", format(std_dev_risk_exposure, big.mark = ","), "\n")
cat("95th Percentile: $", format(percentile_95th, big.mark = ","), "\n")

# Plot histogram of risk exposure
ggplot(data.frame(RiskExposure = risk_exposure), aes(x = RiskExposure)) +
  geom_histogram(binwidth = 10000, fill = "blue", color = "white", alpha = 0.7) +
  labs(title = "Distribution of Risk Exposure",
       x = "Risk Exposure ($)",
       y = "Frequency") +
  theme_minimal()
