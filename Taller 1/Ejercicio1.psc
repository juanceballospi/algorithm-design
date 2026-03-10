// *************************************************************
// PROYECTO: Calculadora de Índice Académico
// AUTOR: Juan Ceballos
//
// ENUNCIADO:
// Una universidad necesita un programa que calcule el índice 
// académico de un estudiante. El usuario debe ingresar:
//   - Nombre del estudiante
//   - 3 notas parciales (cada una vale 25%)
//   - 2 notas de laboratorio (cada una vale 12.5%)
//
// REQUISITOS:
//   1. Validar que todas las notas estén entre 0 y 100.
//   2. Calcular el promedio final (Ponderado al 100%).
//   3. Mostrar: Nombre, Promedio y Estado (APROBADO/REPROBADO).
// *************************************************************

// Función para validar si una nota está en el rango permitido (0-100)
Funcion esValida <- ValidarNota(nota)
    Definir esValida Como Logico
    esValida <- (nota >= 0 Y nota <= 100)
Fin Funcion

// Función para solicitar una nota, validarla y no avanzar hasta que sea correcta
Funcion notaIngresada <- PedirNota(mensaje)
    Definir notaIngresada Como Real
    Repetir
        Escribir mensaje
        Leer notaIngresada
        Si NO ValidarNota(notaIngresada) Entonces
            Escribir "Error: La nota debe estar entre 0 y 100. Intente de nuevo."
        FinSi
    Hasta Que ValidarNota(notaIngresada)
Fin Funcion

Algoritmo Ejercicio1
    // 1. Declaración de Variables
    Definir nombre, status Como Caracter
    Definir p1, p2, p3, l1, l2, index Como Real
    
    // 2. Entrada de Datos
    Escribir "=== SISTEMA DE CALIFICACIONES ==="
    Escribir "Ingrese el nombre del estudiante: "
    Leer nombre
    
    // Usamos la función PedirNota para evitar repetir bloques de validación
    p1 <- PedirNota("Ingrese nota Parcial 1 (25%):")
    p2 <- PedirNota("Ingrese nota Parcial 2 (25%):")
    p3 <- PedirNota("Ingrese nota Parcial 3 (25%):")
    l1 <- PedirNota("Ingrese nota Laboratorio 1 (12.5%):")
    l2 <- PedirNota("Ingrese nota Laboratorio 2 (12.5%):")
    
    // 3. Procesamiento (Cálculo del promedio ponderado)
    // Se multiplica cada nota por su peso porcentual
    index <- (p1 * 0.25) + (p2 * 0.25) + (p3 * 0.25) + (l1 * 0.125) + (l2 * 0.125)
    
    // Determinación del estado académico
    Si index >= 60 Entonces
        status <- "APROBADO"
    SiNo
        status <- "REPROBADO"
    FinSi
    
    // 4. Salida de Resultados
    Escribir "--------------------------------"
    Escribir "RESULTADOS ACADÉMICOS"
    Escribir "Estudiante: ", nombre
    Escribir "Promedio Final: ", index, "%"
    Escribir "Estado: ", status
    Escribir "--------------------------------"
    
FinAlgoritmo