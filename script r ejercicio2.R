library(lpSolve)
beneficio <- c(40,20,30)
consumo <- matrix(c(7,3,6,0.4,0.4,0.5), nrow=2, byrow=TRUE)
direcciones <- c("<=", "<=")
recursos <- c(150,20)
problemas <- lp("max", beneficio, consumo, direcciones, recursos)
problemas
problemas$solution