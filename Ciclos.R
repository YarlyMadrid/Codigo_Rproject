#TALLER DE CICLOS
#SOLO INCLUYEN UNAS CUANTAS PREGUNTAS DEL TALLER

#Pregunta 3

divisoresExactos <- function(numero){
  numeros_exactos<-c()
  contador=1
  for(i in 1:numero){
    if((numero%%i)==0){
      numeros_exactos[contador]=i
      contador=contador+1
    }
  }
  return(numeros_exactos)
}

divisoresExactos(8)

divisoresExactos2 <- function(numero){
  numeros_exactos<-c()
  for(i in 1:numero){
    if((numero%%i)==0){
      numeros_exactos<-append(numeros_exactos,i)
    }
  }
  return(numeros_exactos)
}

divisoresExactos2(8)

#Pregunta 9

terminados6 <- function(){
  numero6<-c()
  for (i in 25:205) {
    if((i%%10)==6){
      numero6<-append(numero6,i)
    }
  }
  return(numero6)
}

terminados6()

#Pregunta 12
digito1<-function(numero){
  if((numero>99)&&(numero<1000)){
    a=floor(numero/100)
    b=floor((numero/100)%%10)
    c=floor(numero%%10)
    contador=0
    numeros<-c(a,b,c)
    for (i in numeros) {
      if(i==1){
        contador=contador+1
      }
    }
    if(contador>=1){
      return(TRUE)
    }else{
      return(FALSE)
    }
  }
  else{
    return("Digite un número de tres digitos mayor a cero")
  }
}

digito1(321)
digito1(258)
digito1(-888)

#Pregunta 14 - muestra los n primeros multiplos de 3
multiplosde3<-function(numero){
  numeros<-c()
  contador=0
  i=1
  while (contador<numero){
    if((i%%3)==0){
      numeros<-append(numeros,i)
      contador=contador+1
    }
    i=i+1
  }
  return(numeros)
}

multiplosde3(10)

#Pregunta 21

#divide un numero en digitos
divide<-function(numero){
  longitud<-ceiling(log10(numero))
  vector1<-10^(longitud:1)
  vector2<-vector1/10
  separados<- c((numero%%vector1)%/%vector2)
  return(separados)
}

sumaDigitos<-function(numero){
  digitos=divide(numero)
  contador=0
  for(i in digitos){
    contador=contador+i
  }
  return(contador)
}
sumaDigitos(784)

#Pregunta 27
mayorDigitos<-function(numero1,numero2){
  longitud1=length(divide(numero1))
  longitud2=length(divide(numero2))
  if(longitud1>longitud2){
    print("El número 1 tiene mayor cantidad de digitos")
  }
  if(longitud1<longitud2){
    print("El número 2 tiene mayor cantidad de digitos")
  }
  if(longitud1==longitud2){
    print("Ambos digitos tiene la misma cantidad de digitos")
  }
}

mayorDigitos(12121,343)

#Pregunta 32
primos<- function(numero){
  contador=0
  if(numero==1){
    return(FALSE)
  }
  if(numero==2){
    return(TRUE)
  }
  else{
    for (i in 2:ceiling(numero/2)) {
      if((numero%%i)==0){
        contador=contador+1
      }
    }
  }
  
  if(contador == 0){
    return(TRUE)
  }else{
    return(FALSE)
  }

}

promedioPrimos<-function(){
  numero=strtoi(readline(prompt = "Digite numeros y pare con cero: "))
  suma=0;cantidad=0
  while (numero != 0) {
    if(primos(numero)){
      suma=suma+numero
      cantidad=cantidad+1
    }
    numero=strtoi(readline(prompt = "Digite numeros y pare con cero: "))
  }
  promedio=suma/cantidad
  return(promedio)
}

#Pregunta 39
fibonacci<-function(){
  numeros<-c(0,1)
  ultimo=0
  i=1
  while(ultimo<=10000){
    numeros<-append(numeros,((numeros[i])+(numeros[i-1])))
    ultimo=numeros[i]
    i=i+1
  }
  return(numeros)
}

#Pregunta 43
#determina cuantos y cuales elementos de la serie fibonacci se encuentran entre numero1 y numero2
fibonacci2<-function(numero1,numero2){
  numeros<-c(0,1)
  contador=0;numerito<-c()
  for (i in 1:2000) {
    numeros<-append(numeros,((numeros[i])+(numeros[i-1])))
    if(((numeros[i+1])>numero1)&&((numeros[i+1])<numero2)){
      contador=contador+1
      numerito=append(numerito,numeros[i+1])
    }
  }
  print(contador)
  print(numerito)
}

#Pregunta 48
parejas<-function(){
  i=0
  j=1
  contador=1
  while(i<=9){
    while(j<=2){
      cat(i,contador,"\n")
      j=j+1
      i=i+1
    }
    contador=contador+1
    j=1
  }
}

#Pregunta 49
ternas<-function(){
  i=1
  j=1
  k=1
  while(i<=9){
    while(j<=3){
      cat(i,k,j,"\n")
      j=j+1
      i=i+1
    }
    j=1
    k=k+1
  }
}

#Pregunta 50
parejas2<-function(){
  i=0
  j=1
  k=1
  while (i<=7) {
    while(j<=4){
      cat(i,k,"\n")
      j=j+1
      i=i+1
    }
    k=k+1
    j=1
  }
}

#EJERCICIOS ADICIONALES

#Escalera de numeros
escalera<-function(numero){
  for (i in 1:numero) {
    for (j in 1:i) {
      cat(j)
    }
    cat("\n")
  }
}

#Escalera de numeros versión 2
escalera2<-function(numero){
  contador=1
  for (i in 1:numero) {
    for (j in 1:i) {
      cat(contador)
      contador=contador+1
    }
    cat("\n")
  }
}

#Escalera de numeros inversa
escalerainversa<-function(numero){
  for (i in 1:numero) {
    for (j in numero:i) {
      cat(j)
    }
    cat("\n")
  }
}

escalerainversa2<-function(numero){
  contador=numero
  for (i in 1:numero) {
    for (j in 1:contador) {
      cat(j)
    }
    cat("\n")
    contador=contador-1
  }
}


#Piramides de asteriscos
piramide<-function(numero){
  c=numero
  for (i in 1:numero) {
    j=1
    while(j<=(c-1)){
      cat(" ")
      j=j+1
    }
    k=1
    while (k<=(i+(i-1))) {
      cat("*")
      k=k+1
    }
    cat("\n")
    c=c-1
  }
}

#Piramides de esteriscos inversa
piramideinversa<-function(numero){
  c=numero
  for (i in 0:(numero-1)) {
    j=0
    while (j<i) {
      cat(" ")
      j=j+1
    }
    for (k in 1:(c+(c-1))) {
      cat("*")
    }
    cat("\n")
    c=c-1
  }
}

#Unión de piramides
unionpiramides<-function(numero){
  cat(piramide(numero),piramideinversa(numero))
}















#