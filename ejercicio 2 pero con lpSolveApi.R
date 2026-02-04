library(lpSolveAPI)
produccion <- make.lp(0,3)
add.constraint(produccion, c(7,3,6), "<=", 150)
add.constraint(produccion, c(0.4,0.4,0.5), "<=", 20)

#### este paquete siempre minimiza por defecto por lo que si queremos
#### llevar a cabo una maxmimizacion debemos de poner los coeficientes negativos

set.objfn(produccion, c(-40,-20,-30))

produccion

solve(produccion)

get.objective(produccion)

get.primal.solution(produccion)
