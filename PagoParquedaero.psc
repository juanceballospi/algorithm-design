Algoritmo PagoParquedaero
	
	Definir hours como real;
	Definir BASE, EXTRA, MAX_PAYOUT como real;
	Definir charge, subtotal, total como real;
	
	BASE = 5;
	EXTRA = 2;
	MAX_PAYOUT = 24;
	
	Escribir "Ingrese el número de horas que se estuvo en el parqueadero: ";
	Leer hours;
	
	Si hours <= 1 Entonces
		total = BASE;
	SiNo
		charge = Ceil(hours);
		subtotal = BASE + ((charge - 1) * EXTRA);
		Si subtotal > MAX_PAYOUT Entonces
			total = MAX_PAYOUT
		SiNo
			total = subtotal;
		Fin Si
	Fin Si
	
	Escribir "Se debe pagar $", total
	
FinAlgoritmo

Funcion resultado <- Ceil ( num )
	Definir resultado Como Entero;
	Si num == trunc(num) Entonces
		resultado = trunc(num);
	SiNo 
		Si num > 0 Entonces
			resultado = trunc(num) + 1;
		SiNo
			resultado = trunc(num)
		FinSi
	FinSi
Fin Funcion
