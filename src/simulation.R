rm(list = objects())
library(Rlab)
n <- 100000
set.seed(n)
mu <- 10
sigma <- 5
y <- array()

X <- rnorm(n, mu, sigma)

for(i in 3:n){
  x <- X[1:i] 
  y[i] <- sqrt(i/(2*sigma*log(log(i))))*(mean(x) - mu)
}

plot(y , 
     ylim = c(-10,10), 
     xlim = c(0,n), type = 'b', pch = 20)
lines(rep(1,n), col = 'red')
lines(rep(-1,n), col = 'red')

Phi <- function(delta, n){
  return( sqrt((log(1/delta) +3*log(log(1/delta)) +3/2*log(log(exp(1)*n))) /n))
}

x <- 1:n
y <- lapply(x, function(x) Phi(0.05,x))
plot(x,y)

