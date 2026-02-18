// Se requiere construir un algoritmo que, al ingresarle un numero de dias cualquiera,
// este permite saber cuantos minutos y cuantos segundos tiene la catidad de dias ingresados.
// Para ello, es imprensindible saber cuantos minutos tiene un dia, as como tambien cuantos 
// segundos contiene en cada dia, esto se puede optener al multiplicar el numero de dias que se ingresaron 
// por la cantidad de horas que tiene cada dia (24) y a su vez, por la cantidad de minutos que tiene cada hora (60) y
// por la cantidad de segundos tiene un minuto (60)

Algoritmo DiasMinutosSegundos
	
	Definir dias Como Entero;
	Definir horas Como Entero;
	Definir minutos Como Entero;
	Definir segundos Como Entero;
	
	Escribir "Ingrese la cantidad de dias a convertir:";
	Leer dias;
	
	horas = dias * 24;
	minutos = horas * 60;
	segundos = minutos * 60;
	
	Escribir "La cantidad de minutos es: ", minutos, " La cantidad de segundos es: ", segundos; 
	
FinAlgoritmo
