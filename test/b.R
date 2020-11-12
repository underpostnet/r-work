library(dplyr)

# A)

print(names(iris))

names(iris) = c('largo.s', 'ancho.s', 'largo.p', 'ancho.p', 'especie')

# B)

iris = mutate(iris, promedio.s = ((largo.s+ancho.s)/2))

iris = mutate(iris, promedio.p = ((largo.p+ancho.p)/2))

summary(iris)

# print(iris)

# C)

c.largo.s = select(iris, largo.s)
c.ancho.s = select(iris, ancho.s)
c.largo.p = select(iris, largo.p)
c.ancho.p = select(iris, ancho.p)
c.especie = select(iris, especie)
c.promedio.s = select(iris, promedio.s)
c.promedio.p = select(iris, promedio.s)

lista = list(c.largo.s, c.ancho.s, c.largo.p, c.ancho.p, c.especie, c.promedio.s, c.promedio.p)

resumen_ = function(lista){

	summary(lista)

}

resumen_(lista)
