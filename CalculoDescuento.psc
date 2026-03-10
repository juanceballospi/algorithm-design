//Diseñe un algoritmo que permite conocer el valor del descuento de un articulo
//según su tipo. Todos los tipos u sus respectivos descuentos son:
//1 --> 12.5%
//2 --> 8.3%
//3 --> 3.2%
//otros --> 0%

Algoritmo Descuento
	
	Definir valor Como Real;
	Definir tipo Como Entero;
	
	Escribir "Ingrese el valor del articulo";
	Leer valor;
	
	Escribir "Ingrese el tipo del articulo";
	Leer tipo;
	
	Segun tipo Hacer
		tipo == 1:
			Escribir "Tienes un descuento de: $ ", valor*0.125;
		tipo == 2:
			Escribir "Tienes un descuento de: $ ", valor*0.083;
		opcion_3:
			Escribir "Tienes un descuento de: $ ", valor*0.032;
		De Otro Modo:
			Escribir "Este articulo no tiene descuento.";
	Fin Segun
	
FinAlgoritmo
