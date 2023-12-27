# Lognormal distribution (example 2)


# Lade die Bibliotheken
library(ggplot2)

# Setze den Seed für die Reproduzierbarkeit
set.seed(123)

# Definiere die Parameter der Lognormalverteilung
meanlog <- 0     # Mittelwert des Logarithmus der Verteilung
sdlog <- 0.2     # Standardabweichung des Logarithmus der Verteilung

# Generiere eine Stichprobe aus einer Lognormalverteilung
data <- rlnorm(100000, meanlog = meanlog, sdlog = sdlog)

# Erstelle ein Histogramm der generierten Daten
ggplot(data.frame(x = data), aes(x)) +
  geom_histogram(binwidth = 0.1, fill = "lightblue", color = "black", alpha = 0.7) +
  labs(title = "Lognormalverteilung", x = "Werte", y = "Häufigkeit")
