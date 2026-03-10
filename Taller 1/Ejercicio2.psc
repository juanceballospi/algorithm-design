// *************************************************************
// PROYECTO: Clasificador de Números
// AUTOR: Juan Ceballos
//
// ENUNCIADO:
// Crea un programa que reciba 4 números enteros y determine:
//   1. Cuántos números son positivos
//   2. Cuántos números son negativos
//   3. Cuántos números son cero
//   4. Cuál es el número mayor
//   5. Cuál es el número menor
//
// EJEMPLO DE ENTRADA: 5, -3, 0, 8
// SALIDA ESPERADA: 
//   Positivos: 2, Negativos: 1, Ceros: 1, Mayor: 8, Menor: -3
// *************************************************************

Funcion conteo <- ContarPositivos(numeros, tamaño)
    Definir conteo, i Como Entero
    conteo <- 0
    Para i <- 1 Hasta tamaño Hacer
        Si numeros[i] > 0 Entonces
            conteo <- conteo + 1
        FinSi
    FinPara
Fin Funcion

Funcion conteo <- ContarNegativos(numeros, tamaño)
    Definir conteo, i Como Entero
    conteo <- 0
    Para i <- 1 Hasta tamaño Hacer
        Si numeros[i] < 0 Entonces
            conteo <- conteo + 1
        FinSi
    FinPara
Fin Funcion

Funcion conteo <- ContarCeros(numeros, tamaño)
    Definir conteo, i Como Entero
    conteo <- 0
    Para i <- 1 Hasta tamaño Hacer
        Si numeros[i] = 0 Entonces
            conteo <- conteo + 1
        FinSi
    FinPara
Fin Funcion

Funcion mayor <- ObtenerMayor(numeros, tamaño)
    Definir mayor, i Como Entero
    mayor <- numeros[1]
    Para i <- 2 Hasta tamaño Hacer
        Si numeros[i] > mayor Entonces
            mayor <- numeros[i]
        FinSi
    FinPara
Fin Funcion

Funcion menor <- ObtenerMenor(numeros, tamaño)
    Definir menor, i Como Entero
    menor <- numeros[1]
    Para i <- 2 Hasta tamaño Hacer
        Si numeros[i] < menor Entonces
            menor <- numeros[i]
        FinSi
    FinPara
Fin Funcion

Algoritmo Ejercicio2
    // 1. Declaración de variables y dimensiones
    Definir numeros, i, n Como Entero
    n <- 4
    Dimensionar numeros[n]
    
    // 2. Entrada de datos con validación básica
    Escribir "=== CALIFICADOR DE 4 NÚMEROS ==="
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el número entero ", i, ":"
        Leer numeros[i]
    Fin Para
    
    // 3. Procesamiento y Salida
    Escribir " "
    Escribir "RESULTADOS DEL ANÁLISIS:"
    Escribir "------------------------"
    Escribir "1. Cantidad de Positivos: ", ContarPositivos(numeros, n)
    Escribir "2. Cantidad de Negativos: ", ContarNegativos(numeros, n)
    Escribir "3. Cantidad de Ceros    : ", ContarCeros(numeros, n)
    Escribir "4. Número Mayor Encontrado: ", ObtenerMayor(numeros, n)
    Escribir "5. Número Menor Encontrado: ", ObtenerMenor(numeros, n)
    Escribir "------------------------"
    
FinAlgoritmo