# Lognormal distribution (example 1)


# Setze den Zufallszahlengenerator für die Reproduzierbarkeit
set.seed(123)

# Parameter für die Lognormalverteilung festlegen
meanlog <- 0    # Mittelwert des Logarithmus
sdlog <- 1      # Standardabweichung des Logarithmus

# Anzahl der Zufallszahlen generieren
n <- 1000

# Generiere Zufallszahlen aus der Lognormalverteilung
lognormal_data <- rlnorm(n, meanlog = meanlog, sdlog = sdlog)

# Plot der Lognormalverteilung
hist(lognormal_data, prob = TRUE, col = "lightblue", main = "Lognormalverteilung", xlab = "Werte")

# Hinzufügen der theoretischen Dichtefunktion
x <- seq(0, max(lognormal_data), length = 100)
lines(x, dlnorm(x, meanlog = meanlog, sdlog = sdlog), col = "red", lwd = 2)
