# Combing plots into a single image by using the par() function


x=seq(-pi,pi,0.1)
y=sin(x)

# divide window into a 1X2 grid
par(mfrow=c(1,2))

# add plots to window
plot(x,y,type='l')
plot(x,y,pch=c(4,5,6),col=c('red','blue','violet','green'))