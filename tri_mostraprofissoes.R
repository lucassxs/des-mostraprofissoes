install.packages('irtoys')
library(irtoys)

altura.par <- matrix(c(
  0.30, 2.519, 0,
  1.18, 1.224, 0,
  1.47, 1.244, 0,
  0.89, 1.330, 0,
  2.21, 1.091, 0,
  1.80, 1.143, 0,
  4.09, -0.103, 0,
  1.11, 2.642, 0,
  1.14, -0.788, 0,
  3.19, 0.055, 0,
  1.16, 0.427, 0,
  2.37, 0.256, 0,
  1.74, 0.829, 0,
  2.81, 0.533, 0
  ),14,3,byrow=TRUE)
altura.par

adilson  <-c(1,0,0,1,1,0,1,0,1,1,1,1,1,1)
dalton   <-c(0,0,0,0,0,0,1,0,1,1,0,1,0,0)
george   <- c(1,0,0,1,1,0,1,0,1,1,1,1,1,1)
brian    <- c(0,0,0,0,0,0,1,0,1,1,0,0,0,0)
adriana  <- c(0,0,1,0,1,1,1,0,1,1,1,1,0,1)
willian  <- c(0,1,1,0,0,1,1,0,1,1,1,1,1,1)
resposta <-rbind(adilson,dalton,george,brian,adriana,willian)
resposta


alturas.reais  <- c(180,173,185,168,170,179)
theta.resposta <- eap(resposta, altura.par, qu=normal.qu())
theta.resposta


estimativas <- (theta.resposta[,1]-mean(theta.resposta[,1]))/sd(theta.resposta[,1]) * sd(alturas.reais) + mean(alturas.reais)
li_ic <- theta.resposta[,1] - 1.96*theta.resposta[,2]
ls_ic <- theta.resposta[,1] + 1.96*theta.resposta[,2]

li_ic <- (li_ic-mean(theta.resposta[,1]))/sd(theta.resposta[,1]) *  sd(alturas.reais) + mean(alturas.reais)
ls_ic <- (ls_ic-mean(theta.resposta[,1]))/sd(theta.resposta[,1]) *  sd(alturas.reais) + mean(alturas.reais)

tabela <- cbind(alturas.reais,round(estimativas,0),round(li_ic,0),round(ls_ic,0))
colnames(tabela) <- c("Valor verdadeiro","Estimativa","LI-IC(95%)","LS-IC(95%)")
tabela