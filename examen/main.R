



data <- read.csv(file = 'C:/xampp/htdocs/R/examen/data/data.csv', encoding = "UTF-8")

selec = sample(1:100, 79)


# -------------------------------------
# -------------------------------------

numero = c()
resistencia = c()
maquina = c()
tiempo = c()

# -------------------------------------
# -------------------------------------

cont = 0

for (i in 1:100) {

	str = data[i,]

	# print(strsplit(str, ";"))

	aux = strsplit(str, ";")

  # print(aux)

	for(a in aux) {

		# print(a[[1]])
		# print(a[[2]])

    for(ii in selec){

      aux_num = strtoi(a[[1]])

      # print(class(aux_num))
      # print(aux_num)

      # print(class(ii))
      # print(ii)

      if(ii == aux_num){

        numero <- c(numero,strtoi(a[[1]]))
        resistencia <- c(resistencia,strtoi(a[[2]]))
        maquina <- c(maquina,a[[3]])
        tiempo <- c(tiempo,strtoi(a[[4]]))

        # print(class(strtoi(a[[2]])))
        # print(class(a[[3]]))
        # numeric or character ?

        cont = cont + 1


      }

    }


	}

}

# -------------------------------------
# -------------------------------------


df <- data.frame(numero, resistencia, maquina, tiempo)
names(df) <- c('numero', 'resistencia', 'maquina', 'tiempo')

print(df)


# -------------------------------------
# -------------------------------------

pdf("hist_resistencia.pdf")

 hist(resistencia, freq=TRUE,
      main="Histograma Resistencia a la ruptura bajo cargas de tensión",
      xlab='Resistencia',
      ylab='Frecuencia')

dev.off()

# -------------------------------------
# -------------------------------------

pdf("hist_tiempo.pdf")

 hist(tiempo, freq=TRUE,
      main="Histograma Tiempo en reposo del cilindro en horas",
      xlab='Tiempo',
      ylab='Frecuencia')

dev.off()

# -------------------------------------
# -------------------------------------

library(moments)

# -------------------------------------
# -------------------------------------

print('---------resistencia---------')

summary(resistencia)
print('desviacion estandar')
print(sd(resistencia))
print('varianza')
print(var(resistencia))
print('simetria')
skewness(resistencia)
print('kurtosis')
kurtosis(resistencia)

# -------------------------------------
# -------------------------------------

print('---------tiempo---------')

summary(tiempo)
print('desviacion estandar')
print(sd(tiempo))
print('varianza')
print(var(tiempo))
print('simetria')
skewness(tiempo)
print('kurtosis')
kurtosis(tiempo)

# -------------------------------------
# -------------------------------------



write.table(df, file="c:/xampp/htdocs/R/examen/output.csv",
    row.names=FALSE,
    col.names=TRUE,
    sep=";",
    dec=".",
    quote=TRUE)










# -------------------------------------
# -------------------------------------

# end
