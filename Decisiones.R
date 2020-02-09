#### EJERCICIO TALLER DECISIONES#####

#PREGUNTA 1

ejercicio1 <- function(numero){
  if((numero %% 10) == 4){
    return("Es un número terminado en 4")
  }else{
    return("NO es un número terminado en 4")
  }
}

ejercicio1(22234)

#PREGUNTA 2

ejercicio2 <- function(numero){
  if ((abs(numero) > 99) && (abs(numero) < 1000)){
    return("El número tiene 3 digitos")
  }else{
    return("El número NO tiene 3 digitos")
  }
}

ejercicio2(-478)

#PREGUNTA 4

ejercicio4 <- function(numero){
  if ((numero > 9) && (numero < 100)){
    a = floor(numero/10)
    b = numero %% 10
    return(a+b)
  }else{
    return ("Digite un número entero de dos digitos")
  }
}

ejercicio4(85)

#PREGUNTA 6

ejercicio6 <- function(numero){
  if((numero > 9) && (numero < 20)){
    primos = c(11,13,17,19)
    posicion = which(primos == numero)
    if (posicion >= 1) {
      print("Es un número primo")
    }else{
      print("NO es un número primo")
    }
  }else{
    return("Digite un número de dos digitos menor a 20")
  }
}
ejercicio6(11)

#PREGUNTA 9

ejercicio9 <- function(numero){
  if ((abs(numero)>9) && (abs(numero)<100)){
    a = floor(abs(numero)/10)
    b = abs(numero)%%10
    if((a%%b == 0) || (b%%a == 0)){
      return("Un digito es multiplo del otro")
    }else{
      return("Un digito NO es multiplo del otro")
    }
  }else{
    return("Digite un número entero de dos digitos")
  }
}

#PREGUNTA 12

ejercicio12 <- function(numero1,numero2){
  if(((numero1>9)&&(numero1<100)) && ((numero2>9)&&(numero2<100))){
    a = floor(numero1/10)
    b = numero1%%10
    c = floor(numero2/10)
    d = numero2%%10
    if((a == c) || (a == d) || (b == c) ||(b == d)){
      return("Ambos números tienen por lo menos un digito en común")
    }else{
      return("NO tienen digitos comunes")
    }
  }else{
    return("Digite dos número enteros de dos digitos")
  }
}

#PREGUNTA 17

ejercicio17 <- function(numero){
  if((numero > 99)&&(numero <= 999)){
    a = floor(numero/100)
    b = floor((numero%%100)/10)
    c = numero%%10
    array = c(a,b,c)
    return(which.max(array))
  }else{
    return("Digite un número entero de tres digitos")
  }
}

#PREGUNTA 20

ejercicio20 <- function(numero1, numero2, numero3){
  array = c(numero1,numero2,numero3)
  return(sort(array))
}

#PREGUNTA 27

ejercicio27 <- function(numero) {
  if ((numero > 999) &&(numero < 10000)){
    a = floor((numero/1000))
    b = floor(((numero%%1000)/100))
    c = floor(((numero%%100)/10))
    d = numero%%10
    suma = 0
    
    if(a%%2 == 0){suma = suma + 1}
    if(b%%2 == 0){suma = suma + 1}
    if(c%%2 == 0){suma = suma + 1}
    if(d%%2 == 0){suma = suma + 1}
    
    return(suma)
  }else{
    return("Digite un número entero de 4 digitos")
  }
}


#PREGUNTA 29

ejercicio29 <- function(numero) {
  if((numero > 9999) && (numero < 100000)){
    a = floor(numero/10000)
    b = floor((numero%%10000)/1000)
    c = floor((numero%%1000)/100)
    d = floor((numero%%100)/10)
    e = numero%%10
    
    suma = 0
    
    if(a == e){suma = suma + 1}
    if(b == d){suma = suma + 1}
    
    if(suma == 2){
      return("Es un número capicúo")
    }else{
      return("NO es un número capucúo")
    }
    
  }else{
    return("Digite un número entero de cinco digitos")
  }
}

#PREGUNTA 32

ejercicio32 <- function(numero) {
  if(numero %% 7 == 0){
    return("Es multiplo de 7")
  }else{
    return("NO es multiplo de 7")
  }
}

#PREGUNTA 36

ejercicio36 <- function(numero) {
  if((numero > 999)&&(numero < 10000)){
    a = floor(numero/1000)
    b = floor((numero%%1000)/100)
    c = floor((numero%%100)/10)
    d = numero%%10
    
    suma = 0
    
    if(a %% 2 == 0){suma = suma + 1}
    if(b %% 2 == 0){suma = suma + 1}
    if(c %% 2 == 0){suma = suma + 1}
    if(d %% 2 == 0){suma = suma + 1}
    
    if(suma == 2){
      return("Tiene igual cantidad de digitos pares e impares")
    }else if (suma >= 3){
      return("Tiene más digitos pares")
    }else{
      return("Tiene más digitos impares")
    }
    
  }else{
    return("Digitar un número entero de 4 digitos")
  }
  
}










