# Installieren und Laden des Pakets "stats" (falls noch nicht installiert)
# install.packages("stats")
library(stats)

# Definition der dlnorm-Funktion
dlnorm_density <- function(x, meanlog = 0, sdlog = 1) {
  dlnorm(x, meanlog = meanlog, sdlog = sdlog)
}

# Grenzen für die Integration festlegen
lower_bound <- 0
upper_bound <- 3

# Integration durchführen
result <- integrate(dlnorm_density, lower_bound, upper_bound)

# Ergebnis ausgeben
cat("Fläche unter der dlnorm-Kurve von", lower_bound, "bis", upper_bound, ":", result$value, "\n")
