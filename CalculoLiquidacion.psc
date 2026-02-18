// Un empleado fue contratado durante un periodo especfico en das y por un salario, ambos conocidos.
// Construya un algoritmo que permita calcular el valor de su liquidacin al terminar el contrato.
// La liquidacin se compone de prima, cesantas, intereses a las cesantas y vacaciones.
// Para calcular estos valores, se usan las siguientes frmulas:
// - Prima: (salario * diasLaborados) / 360
// - Cesantas: (salario * diasLaborados) / 360
// - Intereses cesantias: cesantias * (12% / diasLaborados)
// - Vacaciones: (salario * diasLaborados) / 720

Algoritmo CalculoLiquidaci�n
	
	Definir salario Como Real
	Definir diasLaborados Como Real
	Definir prima Como Real
	Definir cesantias Como Real
	Definir intereses Como Real
	Definir vacaciones Como Real
	Definir liquidacion Como Real
	
	Escribir "Ingrese los d�as laborados: "
	Leer diasLaborados
	
	Escribir "Ingrese el salario: "
	Leer salario
	
	prima = (salario * diasLaborados ) / 360
	cesantias = (salario * diasLaborados ) / 360
	intereses = cesantias * ( 0.12 / diasLaborados)
	vacaciones = (salario * diasLaborados) / 720
	liquidacion = prima + cesantias + intereses + vacaciones
	
	Escribir "Prima: ", prima
	Escribir "Cesant�as: ", cesantias
	Escribir "Intereses cesant�as: ", intereses
	Escribir "Vacaciones: ", vacaciones
	Escribir  "Total liquidaci�n: ", liquidacion
	
FinAlgoritmo
