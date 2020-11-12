
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------


# Defina la v.a. en estudio
# x : cantidad de ventas registradas por numero_mes


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

# Indique la temporada seleccionada aleatoriamente

print('# 0 -> verano: enero-febrero-marzo');
print('# 1 -> otoño: abril-mayo-junio');
print('# 2 -> invierno: julio-agosto-septiembre');
print('# 3 -> primavera: octubre-noviembre-diciembre');
temp = sample(0:3, 1)
temp = 3
paste("Temporada seleccionada:", temp, sep=" ")

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

data <- read.csv(file = 'C:/xampp/htdocs/R/prueba/data.csv', encoding = "UTF-8")

# columnas
numero_mes = c()
ventas_mes = c()

for (i in 0:202) {

	str = data[i,]

	# print(strsplit(str, ";"))

	aux = strsplit(str, ";")
	# dput(aux)


	for(a in aux) {

		# print(a[[1]])
		# print(a[[2]])

		mes = strtoi(a[[1]])
		ventas = strtoi(a[[2]])

		# numero_mes <- c(numero_mes,a[[1]])
		# ventas_mes <- c(ventas_mes,a[[2]])

		if(temp==0){

			if((mes>=1) & (mes<=3)){

				numero_mes <- c(numero_mes,mes)
				ventas_mes <- c(ventas_mes,ventas)

			}

		}

		if(temp==1){

			if((mes>=4) & (mes<=6)){

				numero_mes <- c(numero_mes,mes)
				ventas_mes <- c(ventas_mes,ventas)

			}

		}

		if(temp==2){

			if((mes>=7) & (mes<=9)){

				numero_mes <- c(numero_mes,mes)
				ventas_mes <- c(ventas_mes,ventas)

			}

		}

		if(temp==3){

			if((mes>=10) & (mes<=12)){

				numero_mes <- c(numero_mes,mes)
				ventas_mes <- c(ventas_mes,ventas)

			}

		}


	}

}

# print(ventas_mes)
# print(numero_mes)

# invisible(strtoi(numero_mes))
# invisible(strtoi(ventas_mes))

df <- data.frame(numero_mes, ventas_mes)
names(df) <- c('numero_mes', 'ventas_mes')

print(df)


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------


print('-------------------------')

 hist(ventas_mes, freq=TRUE,
      main=paste("Histograma para las Ventas por Mes en Temporada", temp, sep=" "),
      xlab='# Ventas',
      ylab='Frecuencia')

t.test(ventas_mes, conf.level=0.95)

# print("con un nivel de confianza del 95%, las ventas promedio se encuentra entre:");
# t.test(ventas_mes, conf.level=0.95)$conf.int

print('-------------------------')


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

summary(ventas_mes)

print('-------------------------')

print('desviacion estandar')
print(sd(ventas_mes))
print('varianza')
print(var(ventas_mes))



























#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
