//Diseñe un algoritmo que determine si un número es par o impar.

Algoritmo ParImpar
	Definir num Como Entero;
	
	Escribir "Ingrese el número: ";
	Leer num;
	
	Si num % 2 == 0 Entonces
		Escribir "El número ", num, " es par.";
	SiNo
		Escribir "El número ", num, " es impar.";
	Fin Si
	
FinAlgoritmo
