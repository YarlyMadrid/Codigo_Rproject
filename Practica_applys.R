#Entendiendo la función apply- aplica para matriz, lista o vector

#Practica sobre una matriz
matriz1 = matrix(1:16,nrow = 4,ncol=4,byrow = TRUE)
#Cuando le pongo 1 aplica la función sobre las filas
apply(matriz1, 1, sum)
#Cuando le pongo 2 aplica la función sobre las columnas
apply(matriz1, 2, sum)

(matriz1 <- cbind(matriz1,seq(1:4)))
(matriz1 <- rbind(matriz1,seq(5:10)))

#Practica sobre una lista
familia<-list(padre="Alberto",madre="Cecilia",numero_hijo=2,nombre_hijos=c("Yarly","Hermione"),edades_hijo=c(27,12),ciudad="Cali")
familia
names(familia)
familia$numero_hijo
length(familia$edades_hijo)

A=matrix(1:9,nrow = 3,ncol = 3)
B=matrix(11:19,nrow = 3,ncol = 3)
C=matrix(21:29,nrow = 3, ncol = 3)
mi_lista<-list(A,B,C)
lapply(mi_lista, mean)
mi_lista

#amplicar el conjunto de datos
sexo <- c("masculino","h","hombre","h","mujer","femenino","mujer","m")

#ver que valores toma la variable
unique(sexo)

#definir los nombres que pueden aparecer en el conjunto de datos
nombres.hombre <- c("masculino","hombre","h")
nombres.mujer <- c("femenino","mujer","m")

library(stringi)
