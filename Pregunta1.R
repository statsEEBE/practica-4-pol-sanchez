# Dibujar Poisson Lambda = 25

#P(X=10) prob. de 10 llamadas en una hora, cuando 25 llamadas por hora

dpois(10,25)

x<-0:50
fx<-dpois(x,25)
plot(x,fx,pch=16,col='red')
lines(x,fx,type='h',col='red')

#Probabilidad de 30 llamadas
dpois(30,25)
exp(-25)*25^30/factorial(30)

#Probabilidad de como mucho 30 llamadas P(X<=30)
ppois(30,25)

#Probabilidad de hasta 30 sin incluir P(X<30) = P(X<=29)
ppois(29,25)

#Distribución acumulada de Poisson
fx<-ppois(x,25)
plot(x,fx,pch=16,col='red')
lines(x,fx,type='h',col='red')

#Probabilidad de como mínimo 30 llamadas P(X>=30) = 1-P(X<30) = 1-P(X<=29)
1-ppois(29,25)

#Primer Quartil
qpois(1,25)



#Modelo Exponencial

#El valor de la densidad a 0.3
# - Es zero ya que es una variable continua 

#Distribución de la densidad
t<-seq(0,0.20,0.001)
ft<-dexp(t,25)
plot(t,ft,type='l',col='red')

#Probabilidad de un tiempo de al menos 0.052 horas P(T>0.052) = 1-P(T<=0.052)
1-pexp(0.052,25)
ft<-pexp(t,25)
plot(t,ft,type='l',col='red')

#Tercer Quartil
qexp(0.75,25)

#Simular un tiempo de espera entre dos llamadas
set.seed(123)
simul<-rexp(50000000,25)
hist(simul)
mean(simul)

#Mitjana = 1/lambda
1/25

#Varianza = 1/(lambda)^2
1/(25)^2
