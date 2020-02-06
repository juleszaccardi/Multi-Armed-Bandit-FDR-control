rm(list = objects())
#library(Rlab)
n <- 1000
set.seed(n)
mu <- 0
sigma <- 1
y <- array()

for(i in 3:n){
  x <- rnorm(i, mu, sigma)
  y[i] <- sum(x)/sqrt(2*i*log(log(i)))
}

plot(y , 
     ylim = c(-2,2), 
     xlim = c(0,600), type = 'b', pch = 20)
lines(rep(1,600), col = 'red')
lines(rep(-1,600), col = 'red')
