// *************************************************************
// PROYECTO: Evaluador de Crédito Bancario
// AUTOR: Juan Ceballos
//
// ENUNCIADO:
// Un banco evalúa solicitudes de crédito basándose en:
//   - Ingreso mensual, Edad y Deudas actuales.
//
// REGLAS DE APROBACIÓN:
//   1. Ingreso < $1,000,000: RECHAZADO (Mínimo insuficiente).
//   2. Ingreso [$1M - $2M]: Requiere edad 25-60 y NO tener deudas.
//   3. Ingreso >= $2,000,000: Requiere edad >= 18 (deudas no afectan).
// *************************************************************

Algoritmo Ejercicio5
    // 1. Declaración de Variables
    Definir ingreso Como Real
    Definir edad Como Entero
    Definir tieneDeudas Como Caracter
    Definir esAprobado Como Logico
    Definir motivo Como Caracter
    
    esAprobado <- Falso
    motivo <- ""
    
    // 2. Entrada de Datos
    Escribir "=== SISTEMA DE EVALUACIÓN DE CRÉDITO ==="
    Escribir "Ingrese su ingreso mensual ($):"
    Leer ingreso
    Escribir "Ingrese su edad:"
    Leer edad
    Escribir "¿Tiene deudas actuales? (Si/No):"
    Leer tieneDeudas
    
    // 3. Lógica de Evaluación (Reglas del Banco)
    Si ingreso < 1000000 Entonces
        motivo <- "Ingreso mensual inferior al mínimo requerido ($1,000,000)."
    SiNo
        Si ingreso < 2000000 Entonces
            // Regla para ingresos entre 1M y 2M
            Si (edad >= 25 Y edad <= 60) Entonces
                Si Mayusculas(tieneDeudas) = "NO" Entonces
                    esAprobado <- Verdadero
                SiNo
                    motivo <- "Cuenta con deudas vigentes para este rango de ingresos."
                FinSi
            SiNo
                motivo <- "La edad debe estar entre 25 y 60 años para este perfil."
            FinSi
        SiNo
            // Regla para ingresos de 2M o más
            Si edad >= 18 Entonces
                esAprobado <- Verdadero
            SiNo
                motivo <- "El solicitante debe ser mayor de edad."
            FinSi
        FinSi
    FinSi
    
    // 4. Salida de Resultados
    Escribir ""
    Escribir "==========================================="
    Escribir "          DICTAMEN DE LA SOLICITUD         "
    Escribir "==========================================="
    
    Si esAprobado Entonces
        Escribir "ESTADO: CRÉDITO APROBADO"
        Escribir "¡Felicidades! Cumple con todos los requisitos."
    SiNo
        Escribir "ESTADO: CRÉDITO RECHAZADO"
        Escribir "MOTIVO: ", motivo
    FinSi
    
    Escribir "==========================================="
    Escribir "           Evaluación finalizada           "
    
FinAlgoritmo