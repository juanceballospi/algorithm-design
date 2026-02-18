Algoritmo CalculoVelocidad
	Definir velocidad Como Real;
	Definir distancia Como Real;
	Definir tiempo Como Real;
	
	Escribir "Ingrese la distancia, en metros, que hay desde su casa a la universidad:";
	Leer distancia
	
	Escribir "Ingrese el tiempo, en segundos, que tarda en llegar a la universidad:";
	Leer tiempo;
	
	velocidad = distancia / tiempo;
	
	Escribir "La velocidad en la que llegas a la universidad es ", velocidad, " m/s";
FinAlgoritmo
