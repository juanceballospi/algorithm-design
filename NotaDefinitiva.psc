//Diseñe imi algorimo que permita imprimir un mensaje según la nota definitiva de un estudiante entre 0.0 y 5.0,
//de acuerdo con lo siguiente
//  menor que 3.5 --> Insuficiente
// mayor igual que 3.5 o menor que 4 --> Aceptable
// mayor igual que4 o menor que 5 --> Sobresaliente
// igual a 5 excelente -->  Excelente

Algoritmo NotaDefinitiva
	
	Definir nota Como Real
	Escribir "Ingrese nota: ";
	Leer nota;
	
	Si (nota < 3.5) Entonces
		Escribir "Insuficiente"
	SiNo
		Si (nota >= 3.5 Y nota < 4) Entonces
			Escribir  "Aceptable"
		SiNo
			Si (nota >= 4 Y nota < 5) Entonces
				Escribir "Sobresaliente"
			SiNo
				Si nota == 5 Entonces
					Escribir "Excelente"
				SiNo
					Escribir "Nota invalida"
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	Segun nota Hacer
		nota < 3.5:
			Escribir "Insuficiente"
		(nota >= 3.5 Y nota < 4):
			Escribir  "Aceptable"
		opcion_3:
			secuencia_de_acciones_3
		De Otro Modo:
			secuencia_de_acciones_dom
	Fin Segun
	
FinAlgoritmo
