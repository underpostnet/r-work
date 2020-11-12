# A)

Nombre = c('Valentina','Rob','Arya','John','Heidi','Ned','Dany','Brian','Nicole')
Peso = c(50,71,42,68,55,76,47,64,48)
Altura = c(1.75,1.78,1.55,1.71,1.63,1.70,1.57,1.65,1.60)
IMC = c()

for (i in 1:length(Nombre)) {

	IMC[i] = round((Peso[i]/(Altura[i]^2)),2) 	

}

Tabla = data.frame (cbind(Nombre, Peso, Altura, IMC))

print(Tabla)

# b)

for (i in 1:length(Nombre)) {

	if (IMC[i]<20){
	
		print(Nombre[i])

	}	

}


