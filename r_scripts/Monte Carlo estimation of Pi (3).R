simulation = function(long){
  c = rep(0,long)
  numberIn = 0
  for(i in 1:long){
    x = runif(2,-1,1)
    if(sqrt(x[1]*x[1] + x[2]*x[2]) <= 1){
      numberIn = numberIn + 1
    }
    prop = numberIn / i
    piHat = prop *4
    c[i] = piHat
  }
  return(c)
}

size = 1000
res = simulation(size)
ini = 1
plot(res[ini:size], type = "l", main = "approixmation of pi", xlab = "number of points", ylab = "estimated value of pi", ylim = c(2, 4), col.main = "blue", col.lab ="blue")
lines(rep(pi, size)[ini:size], col = "red")
