#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------


# Defina la v.a. en estudio
# x : cantidad de ventas registradas por numero_mes


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

# Indique la temporada seleccionada aleatoriamente


s_mes = sample(1:12, size=2, replace=FALSE)
a_mes = s_mes[[1]];
b_mes = s_mes[[2]];

a_mes = 6
b_mes = 5

paste("Mes 1 seleccionada:", a_mes, sep=" ")

paste("Mes 2 seleccionada:", b_mes, sep=" ")

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------


data <- read.csv(file = 'C:/xampp/htdocs/R/prueba/data.csv', encoding = "UTF-8")

# columnas
numero_mes = c()
ventas_mes = c()

for (i in 0:202) {


	#-----------------------------
	#-----------------------------

	# genera una lista con un unico elemento vector
	str = data[i,]
	aux = strsplit(str, ";")

	#-----------------------------
	#-----------------------------

	for(a in aux) {

		mes = strtoi(a[[1]])
		ventas = strtoi(a[[2]])

		if(mes==a_mes){

			numero_mes <- c(numero_mes,mes)
			ventas_mes <- c(ventas_mes,ventas)

		}

		if(mes==b_mes){

			numero_mes <- c(numero_mes,mes)
			ventas_mes <- c(ventas_mes,ventas)

		}

	}

	#-----------------------------
	#-----------------------------

}


df <- data.frame(numero_mes, ventas_mes)
names(df) <- c('numero_mes', 'ventas_mes')

print(df)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------


 hist(ventas_mes, freq=TRUE,
      main=paste("Histograma para las Ventas por Mes en Temporada", s_mes, sep=" "),
      xlab='# Ventas',
      ylab='Frecuencia')

t.test(ventas_mes, conf.level=0.95)

# print("con un nivel de confianza del 90%, las ventas promedio se encuentra entre:");
# t.test(ventas_mes, conf.level=0.90)$conf.int


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
