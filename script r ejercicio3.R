library(lpSolve)
beneficio <- c(15,15,17)
consumo <- matrix(c(8,9,8,9,8,7,8,6,9,7,7,9,9,9,9,7,7,8), nrow=6, byrow=TRUE)
direcciones <- c(">=", ">=", ">=", ">=", ">=", ">=")
recursos <- c(960,960,960,960,960,960)

#### para forzar que se usen numeros enteros añadimos el parámetro all.int=TRUE
#### a la funcion lp

problemas <- lp("min", beneficio, consumo, direcciones, recursos, all.int = TRUE)
problemas
problemas$solution