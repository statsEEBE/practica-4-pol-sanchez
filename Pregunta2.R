#Intento de resolución
#1.1
lambda = 1/10000
1-pexp(13000,lambda)

#1.2
qexp(0.8,lambda)

#2.1
set.seed(85)
simul<-rexp(100,lambda)
mean(simul)

#2.2
median(simul)

#2.3
var(simul)