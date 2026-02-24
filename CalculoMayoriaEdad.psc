//Diseñe un algoritmo que permita solicitar tanto el nombre como la edad de la persona
//y posteriormente indiciar si ella es "Mayor de edad" o "Menor de edad" según la información ingresada.
//Para el ejemplo, una persona se considera mayor de edad si tiene 18 años o más.

Algoritmo CalculoMayoriaEdad
	
	Definir name como Cadena;
	Definir age Como Entero;
	
	Escribir "Ingrese el nombre: ";
	Leer name;
	
	Escribir "Ingrese la edad: ";
	Leer age;
	
	Si age >= 18 Entonces
		Escribir  name, " es mayor de edad.";
	SiNo
		Escribir  name, " es menor de edad.";
	Fin Si
	
FinAlgoritmo
