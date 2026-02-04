library(lpSolveAPI)

produccion <- make.lp(0,11)

add.constraint(produccion, c(1,0,0,0,0,0,0,0,0,0,0), ">=", 3)
add.constraint(produccion, c(-1,1,0,0,0,0,0,0,0,0,0), ">=", 2)
add.constraint(produccion, c(-1,0,1,0,0,0,0,0,0,0,0), ">=", 6)
add.constraint(produccion, c(0,0,-1,1,0,0,0,0,0,0,0), ">=", 2)
add.constraint(produccion, c(-1,0,0,0,1,0,0,0,0,0,0), ">=", 3)
add.constraint(produccion, c(0,-1,0,0,0,1,0,0,0,0,0), ">=", 3)
add.constraint(produccion, c(0,0,-1,0,0,0,1,0,0,0,0), ">=", 5)
add.constraint(produccion, c(0,0,-1,0,0,0,0,1,0,0,0), ">=", 1)
add.constraint(produccion, c(0,0,0,0,0,-1,0,0,1,0,0), ">=", 1)
add.constraint(produccion, c(0,0,0,0,0,0,0,-1,1,0,0), ">=", 1)
add.constraint(produccion, c(0,0,0,0,0,0,0,0,-1,1,0), ">=", 2)
add.constraint(produccion, c(0,0,0,0,0,0,0,0,0,-1,1), ">=", 0)
add.constraint(produccion, c(0,0,0,-1,0,0,0,0,0,0,1), ">=", 0)
add.constraint(produccion, c(0,0,0,0,-1,0,0,0,0,0,1), ">=", 0)
add.constraint(produccion, c(0,0,0,0,0,0,-1,0,0,0,1), ">=", 0)

#### este paquete siempre minimiza por defecto por lo que si queremos
#### llevar a cabo una maxmimizacion debemos de poner los coeficientes negativos

set.objfn(produccion, c(0,0,0,0,0,0,0,0,0,0,1))

produccion

solve(produccion)

get.objective(produccion)

get.primal.solution(produccion)

