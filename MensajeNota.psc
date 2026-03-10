//Diseñe un algoritmo que reciba una nota definitva entre 0.0 y 5.0.
//El algoritmo debe imprimir el valor ingresado, y de ser una nota mayor o igual a 4.0, 
//deberá imprimir un mensaje de felicitaciones
		
	
Algoritmo MensajeNota
	
	Definir nota como real
	
	Escribir "Ingrese su nota: "
	Leer nota;
	
	Si nota > 5 O nota < 0 Entonces
		Escribir "El valor de la nota no es correcto, no se admointe valore mayore a 5-0 o menors a 0.0";
	SiNo
		Escribir "La nota ingresada es: ", nota;
		Si nota >= 4.0 Entonces
			Escribir "Felicitaciones!!"
		Fin Si
	FinSi
	
FinAlgoritmo
