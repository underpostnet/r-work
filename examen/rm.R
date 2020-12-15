


data <- read.csv(file = 'C:/xampp/htdocs/R/examen/data/data.csv', encoding = "UTF-8")


# -------------------------------------
# -------------------------------------

resistencia_a = c()
resistencia_b = c()

# -------------------------------------
# -------------------------------------

for (i in 1:100) {

  str = data[i,]

  # print(strsplit(str, ";"))

  aux = strsplit(str, ";")

  # print(aux)

  for(a in aux) {

    # print(a[[1]])
    # print(a[[2]])

    # resistencia_a <- c(resistencia_a,strtoi(a[[2]]))

    if(a[[3]]=='A'){

      resistencia_a <- c(resistencia_a,strtoi(a[[2]]))

    }
    if(a[[3]]=='B'){

      resistencia_b <- c(resistencia_b,strtoi(a[[2]]))

    }

  }


}


print('resumen resistencia maquina A')
summary(resistencia_a)


print('resumen resistencia maquina B')
summary(resistencia_b)



# -------------------------------------
# -------------------------------------















# -------------------------------------
# -------------------------------------
