// *************************************************************
// PROYECTO: Sistema de Caja Registradora
// AUTOR: Juan Ceballos
//
// ENUNCIADO:
// Un cliente compra 3 productos. El programa debe:
//   1. Solicitar nombre y precio de cada uno.
//   2. Calcular subtotal y preguntar por cupón (Sí/No).
//   3. Aplicar descuento del 15% (si aplica).
//   4. Calcular IVA del 19% sobre el valor con descuento.
//   5. Mostrar factura detallada.
// *************************************************************

Algoritmo Ejercicio4
    // 1. Declaración de Variables
    Definir p1, p2, p3 Como Caracter
    Definir precio1, precio2, precio3 Como Real
    Definir subtotal, descuento, montoIVA, total, tasaIVA Como Real
    Definir tieneCupon Como Caracter
    
    tasaIVA <- 0.19 // 19%
    descuento <- 0
    
    // 2. Entrada de Datos (3 Productos)
    Escribir "=== SISTEMA DE VENTAS POS ==="
    
    Escribir "Nombre del Producto 1:"
    Leer p1
    Escribir "Precio de ", p1, ":"
    Leer precio1
    
    Escribir "Nombre del Producto 2:"
    Leer p2
    Escribir "Precio de ", p2, ":"
    Leer precio2
    
    Escribir "Nombre del Producto 3:"
    Leer p3
    Escribir "Precio de ", p3, ":"
    Leer precio3
    
    // 3. Procesamiento de Cálculos
    subtotal <- precio1 + precio2 + precio3
    
    Escribir "¿Tiene cupón de descuento? (Si/No):"
    Leer tieneCupon
    
    // Validación de cupón (Acepta "si", "SI", "Si")
    Si Mayusculas(tieneCupon) = "SI" Entonces
        descuento <- subtotal * 0.15
    FinSi
    
    // El IVA se aplica sobre el subtotal menos el descuento
    montoIVA <- (subtotal - descuento) * tasaIVA
    total <- (subtotal - descuento) + montoIVA
    
    // 4. Salida de Factura Detallada
    Escribir ""
    Escribir "==========================================="
    Escribir "             FACTURA DE VENTA              "
    Escribir "==========================================="
    Escribir "DETALLE DE PRODUCTOS:"
    Escribir "- ", p1, " : $", precio1
    Escribir "- ", p2, " : $", precio2
    Escribir "- ", p3, " : $", precio3
    Escribir "-------------------------------------------"
    Escribir "SUBTOTAL     : $", subtotal
    
    Si descuento > 0 Entonces
        Escribir "DESCUENTO (15%): -$ ", descuento
    FinSi
    
    Escribir "IVA (19%)    : $", montoIVA
    Escribir "-------------------------------------------"
    Escribir "TOTAL A PAGAR: $", total
    Escribir "==========================================="
    Escribir "         ¡Gracias por su compra!           "
    
FinAlgoritmo