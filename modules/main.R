

data <- read.csv(file = 'C:/xampp/htdocs/R/prueba/data.csv', encoding = "UTF-8")

# columnas
numero_mes = c()
ventas_dia = c()

for (i in 0:202) {

	str = data[i,]

	# print(strsplit(str, ";"))

	aux = strsplit(str, ";")
	# dput(aux)


	for(a in aux) {

		# print(a[[1]])
		# print(a[[2]])


		numero_mes <- c(numero_mes,a[[1]])
		ventas_dia <- c(ventas_dia,a[[2]])

	}

}

# print(ventas_dia)
# print(numero_mes)

# invisible(strtoi(numero_mes))
# invisible(strtoi(ventas_dia))

df <- data.frame(numero_mes, ventas_dia)
names(df) <- c('numero_mes', 'ventas_dia')
print(df)


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------















#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------


























#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
