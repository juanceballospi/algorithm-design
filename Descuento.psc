//Crear un algoritmo que indique el valor del descuento de un artículo el cual es de 5% solo si el artículo tiene
//un costo superir al $ 150.000

Algoritmo Descuento
	
	Definir value Como Real;
	Definir discount Como Real;
	
	discount = 0;
	
	Escribir "Ingrese el costo del artículo: ";
	Leer value;
	
	Si value > 150000 Entonces
		discount = value * 0.05;
		Escribir "Este artículo tiene un descuento de $", discount
	SiNo
		Escribir "Este artículo no tiene descuento.";
	Fin Si
	
	Escribir "Subtotal: $ ", value;
	Escribir "Descuento: $ ", discount;
	Escribir "Total: $ ", value - discount;
	
FinAlgoritmo
