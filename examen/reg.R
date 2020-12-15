


# install.packages("ggplot2", repos = "http://cran.us.r-project.org")


data <- read.csv(file = 'C:/xampp/htdocs/R/examen/examples/2/output.csv', encoding = "UTF-8")


# -------------------------------------
# -------------------------------------

resistencia = c()
tiempo = c()

# -------------------------------------
# -------------------------------------

for (i in 1:79) {

  str = data[i,]

  # print(strsplit(str, ";"))


  aux = strsplit(str, ";")

  # print(aux)

  for(a in aux) {

    resistencia <- c(resistencia,strtoi(a[[2]]))

    tiempo <- c(tiempo,strtoi(a[[4]]))

  }


}

# -------------------------------------
# -------------------------------------

df <- data.frame(resistencia, tiempo)
names(df) <- c('resistencia', 'tiempo')

print(df)

# -------------------------------------
# -------------------------------------

library(ggplot2)

# ggplot(data = df, aes(y = resistencia, x = tiempo)) +
#     geom_point()



library(ggpubr)

ggscatter(df, x = "tiempo", y = "resistencia",
          add = "reg.line", conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "tiempo", ylab = "resistencia")



res <- cor.test(df$tiempo, df$resistencia,
                    method = "pearson")

print(res)










# end
