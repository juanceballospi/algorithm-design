//Crear un algoritmo que indique si un estudiante ganó o perdió un curso desupés de presetnar los cinco trabajos
//asociados al curso (notas entre 0.0 y 5.0)
//Los trabajos tienen igual peso sobre la nota final y se gana el curso si la nota definitiva es superior a 3.5

Algoritmo Definitiva
	Definir t1, t2, t3, t4, t5, result Como Real;
	
	Escribir "Ingrese la nota del primer trabajo:"
	Leer t1;
	Escribir "Ingrese la nota del segundo trabajo:"
	Leer t2;
	Escribir "Ingrese la nota del tercer trabajo:"
	Leer t3;
	Escribir "Ingrese la nota del cuarto trabajo:"
	Leer t4;
	Escribir "Ingrese la nota del quito trabajo:"
	Leer t5;
	
	result = (t1+t2+t3+t4+t5)/5
	
	Escribir "Nota final: ", result;
	
	Si result >= 3.5 Entonces
		Escribir "Has ganado el curso"
	SiNo
		Escribir "Has peridido el curso"
	FinSi
	
FinAlgoritmo
