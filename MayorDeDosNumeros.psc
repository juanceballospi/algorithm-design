//Diseñe un algoritmo que permita determinar el mayor de dos números enteros

Algoritmo MayorDeDosNumeros
	
	Definir num1, num2 como Entero;
	
	Escribir "Ingrese el primer número: ";
	Leer num1;
	
	Escribir "Ingrese el segundo número: ";
	Leer num2;
	
	Si num1 == num2 Entonces
		Escribir "Los números son iguales";
	SiNo
		Si num1 > num2 Entonces
			Escribir "El número ",  num1, " es mayor que ", num2
		SiNo
			Escribir "El número ",  num2, " es mayor que ", num1
		Fin Si
	FinSi
	
FinAlgoritmo
