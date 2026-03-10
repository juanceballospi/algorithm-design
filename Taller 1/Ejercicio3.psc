// *************************************************************
// PROYECTO: Calculadora de Sueldo
// AUTOR: Juan Ceballos
//
// ENUNCIADO:
// Una empresa paga a sus empleados según su categoría:
//   - Categoría "A": $50 por hora
//   - Categoría "B": $40 por hora
//   - Categoría "C": $30 por hora
//
// REQUISITOS:
//   1. Solicitar nombre, categoría (A, B o C) y horas trabajadas.
//   2. Si trabajó más de 40 horas, las extras se pagan al DOBLE.
//   3. Mostrar: Nombre, horas normales, horas extras y sueldo total.
// *************************************************************

// Función para obtener el pago por hora según la categoría
Funcion tarifa <- ObtenerTarifa(categoria)
    Definir tarifa Como Real
	
	Segun Mayusculas(categoria) Hacer
		"A":
			tarifa <- 50
		"B":
			tarifa <- 40
		"C":
			tarifa <- 30
		De Otro Modo:
			tarifa <- 0
	Fin Segun
Fin Funcion

Algoritmo Ejercicio3
    // 1. Declaración de Variables
    Definir nombre, cat Como Caracter
    Definir horasTotales, horasNormales, horasExtras Como Real
    Definir tarifaHora, sueldoNormal, sueldoExtra, sueldoTotal Como Real
    
    // 2. Entrada de Datos
    Escribir "=== SISTEMA DE NÓMINA EMPRESARIAL ==="
    Escribir "Ingrese el nombre del empleado:"
    Leer nombre
    
    // Validación de categoría
    Repetir
        Escribir "Ingrese categoría (A, B o C):"
        Leer cat
        tarifaHora <- ObtenerTarifa(cat)
        Si tarifaHora = 0 Entonces
            Escribir ">> ERROR: Categoría no válida. Intente de nuevo."
        FinSi
    Hasta Que tarifaHora > 0
    
    Escribir "Ingrese total de horas trabajadas:"
    Leer horasTotales
    
    // 3. Procesamiento de Horas y Sueldos
    Si horasTotales > 40 Entonces
        horasNormales <- 40
        horasExtras <- horasTotales - 40
    SiNo
        horasNormales <- horasTotales
        horasExtras <- 0
    FinSi
    
    // Cálculos monetarios
    sueldoNormal <- horasNormales * tarifaHora
    sueldoExtra <- horasExtras * (tarifaHora * 2) // Pago al doble
    sueldoTotal <- sueldoNormal + sueldoExtra
    
    // 4. Salida de Resultados
    Escribir ""
    Escribir "==========================================="
    Escribir "           DESGLOSE DE PAGO FINAL          "
    Escribir "==========================================="
    Escribir "EMPLEADO       : ", nombre
    Escribir "CATEGORÍA      : ", Mayusculas(cat)
    Escribir "PAGO POR HORA  : $", tarifaHora
    Escribir "-------------------------------------------"
    Escribir "HORAS NORMALES : ", horasNormales
    Escribir "HORAS EXTRAS   : ", horasExtras
    Escribir "-------------------------------------------"
    Escribir "SUELDO TOTAL   : $", sueldoTotal
    Escribir "==========================================="
    
FinAlgoritmo