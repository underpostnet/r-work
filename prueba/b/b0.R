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
numero_mes_a = c()
ventas_mes_a = c()

numero_mes_b = c()
ventas_mes_b = c()

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

			numero_mes_a <- c(numero_mes_a,mes)
			ventas_mes_a <- c(ventas_mes_a,ventas)

		}

		if(mes==b_mes){

			numero_mes_b <- c(numero_mes_b,mes)
			ventas_mes_b <- c(ventas_mes_b,ventas)

		}

	}

	#-----------------------------
	#-----------------------------

}


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

df_a <- data.frame(numero_mes_a, ventas_mes_a)
names(df_a) <- c('numero_mes_a', 'ventas_mes_a')
print(df_a)

summary(ventas_mes_a)

print('desviacion estandar')
print(sd(ventas_mes_a))
print('varianza')
print(var(ventas_mes_a))

t.test(ventas_mes_a, conf.level=0.95)

print('-------------------------')


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

df_b <- data.frame(numero_mes_b, ventas_mes_b)
names(df_b) <- c('numero_mes_b', 'ventas_mes_b')
print(df_b)

summary(ventas_mes_b)

print('desviacion estandar')
print(sd(ventas_mes_b))
print('varianza')
print(var(ventas_mes_b))

t.test(ventas_mes_b, conf.level=0.95)

print('-------------------------')

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------


t.test(x=ventas_mes_b, y=ventas_mes_a,
       paired=FALSE, var.equal=TRUE,
       conf.level = 0.90)

t.test(x=ventas_mes_a, y=ventas_mes_b,
      paired=FALSE, var.equal=TRUE,
      conf.level = 0.90)
























#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
