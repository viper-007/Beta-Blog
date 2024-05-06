# Lognormal distribution (PDF charts)

curve(dlnorm(x, meanlog=0, sdlog=1), from=0, to=10)


curve(dlnorm(x), from=0, to=10, 
      main = 'Log Normal Distribution (PDF)', #add title
      ylab = 'Density', #change y-axis label
      lwd = 2, #increase line width to 2
      col = 'steelblue') #change line color to steelblue



#create PDF plots
curve(dlnorm(x, meanlog=0, sdlog=.3), from=0, to=10, col='blue')
curve(dlnorm(x, meanlog=0, sdlog=.5), from=0, to=10, col='red', add=TRUE)
curve(dlnorm(x, meanlog=0, sdlog=1), from=0, to=10, col='purple', add=TRUE)

#add legend
# legend(6, 1.2, legend=c("sdlog=.3", "sdlog=.5", "sdlog=1"), col=c("blue", "red", "purple"), lty=1, cex=1.2)


