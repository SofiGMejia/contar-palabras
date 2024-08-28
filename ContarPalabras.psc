Proceso ContarPalabras
    Definir texto, palabraActual Como Cadena
    Definir i, j, largoTexto, contadorPalabras Como Entero
    texto <- "Hola, mundo!"
	
    largoTexto <- Longitud(texto)
    contadorPalabras <- 0
    palabraActual <- ""
	
    Para i <- 1 Hasta largoTexto Con Paso 1 Hacer
        caracter <- Subcadena(texto, i, 1)
		
        Si (caracter >= "a" y caracter <= "z") o (caracter >= "A" y caracter <= "Z") Entonces
            palabraActual <- palabraActual + (caracter)
        Sino
            Si palabraActual <> "" Entonces
                EncontrarPalabra(palabras, frecuencias, palabraActual, contadorPalabras)
                palabraActual <- ""
            FinSi
        FinSi
    FinPara
	
    Si palabraActual <> "" Entonces
        EncontrarPalabra(palabras, frecuencias, palabraActual, contadorPalabras)
    FinSi
	
    Para i <- 1 Hasta contadorPalabras Hacer
        Escribir palabra[i], " : ", frecuencia[i]
    FinPara
	
FinProceso

SubProceso EncontrarPalabra(Ref palabras[,], Ref frecuencias[,], palabra, Ref contadorPalabras)
    Definir encontrada Como Logico
    Definir i Como Entero
    encontrada <- Falso
    
    Para i <- 1 Hasta contadorPalabras Hacer
        Si palabra[i] = palabra Entonces
            frecuencia[i] <- ConvertirANumero(frecuencias[i]) + 1
            encontrada <- Verdadero
		FinSi
    FinPara
	
    Si No encontrada Entonces
        contadorPalabras <- contadorPalabras + 1
        palabra[contadorPalabras] <-palabra
        frecuencia[contadorPalabras] <- "1"
    FinSi
FinSubProceso