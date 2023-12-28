# Beispiel für die Verwendung der Funktion polygon
x <- c(1, 2, 3, 2)
y <- c(1, 3, 1, 1)

# Ein einfaches Diagramm zeichnen
plot(x, y, type = "n", xlim = c(0, 4), ylim = c(0, 4), xlab = "X-Achse", ylab = "Y-Achse")

# Polygon zeichnen
polygon(x, y, col = "lightblue")


# polygon(x, y, density = NULL, angle = 45, border = NULL, col = NA, lty = par("lty"),fillOddEven = FALSE)