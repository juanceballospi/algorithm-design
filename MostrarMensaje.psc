//Diseñe un algoritmo que permite imprimir un mensaje según un caracter dado por el usuario,
//independiente que sea ingresado en mayúscula o minúscula

Algoritmo MostrarMensaje
	
	Definir opt Como Caracter
	
	Escribir "Ingresa una opcion: "
	Leer opt;
	
	Si ( opt == "A" O opt == "a") Entonces
		Escribir "Android";
		
	SiNo
		Si (opt == "I" O opt == "i") Entonces
			Escribir "IOs"
		SiNo
			Escribir "Opcion invalida";
		FinSi
	FinSi	
	
FinAlgoritmo
