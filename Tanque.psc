//Crear un algoritmo que indique si la llave del tanque de auga debe ser abierta o cerrada.
//El tanque debe estar siempre entre 250 y 450 litos

Algoritmo Tanque
	
	Definir value Como Real;
	
	Escribir "Ingrese la cantidad de litros en el tanque: "
	Leer value;
	
	Si value < 250 Entonces
		Escribir "Nivel de agua bajo, abrir la llave del agua."
	FinSi
	
	Si value > 450 Entonces
		Escribir "Nivel del agua alto, cerrar la llave del agua.";
	FinSi
	
	Si value >= 250 Y value <= 450 Entonces
		Escribir "Nivel del agua aceptable."
	FinSi
	
FinAlgoritmo
