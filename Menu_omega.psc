Proceso Menu_omega
	Definir opcion,tragos, tragosporpersona, numerador1, denominador1, numerador2, denominador2, numeradorResultado, denominadorResultado Como Entero;
	Definir a, b, area, maiz como real;
	Repetir
		Escribir "Menu de omegas";
		Escribir " (1) Contando enteros en l�nea";
		Escribir " (2) La parranda 2";
		Escribir " (3) Suma de fracciones simple";
		Escribir " (4) Formulota";
		Escribir " (5) Tortillas horneadas";
		leer opcion;
		Segun opcion Hacer
			1:
				Escribir "Contando enteros en l�nea";
			2:
				Escribir "La parranda 2";
				Escribir "Ingrese la cantidad total de tragos: ";
				Leer tragos;
				
				Si tragos Mod 2 = 0 Entonces
					tragosPorPersona <- tragos / 2;
					Escribir "Ambos deben beber ", tragosPorPersona, " tragos para estar iguales.";
				Sino
					Escribir "No se puede dividir la cantidad de tragos de manera equitativa. No beber�n nada.";
				FinSi
				Esperar 4 Segundos;
			3:
				Escribir "Suma de fracciones simple";
				Escribir "Ingrese el numerador de la primera fracci�n: ";
				Leer numerador1;
				Escribir "Ingrese el denominador de la primera fracci�n: ";
				Leer denominador1;
				
				Escribir "Ingrese el numerador de la segunda fracci�n: ";
				Leer numerador2;
				Escribir "Ingrese el denominador de la segunda fracci�n: ";
				Leer denominador2;
				
				
				numeradorResultado <- (numerador1 * denominador2) + (numerador2 * denominador1);
				denominadorResultado <- denominador1 * denominador2;
				
				Escribir numerador1, "/", denominador1, "+", numerador2, "/", denominador2, "=", numeradorResultado, "/", denominadorResultado;
				Esperar 4 Segundos;
			4: 
				Escribir "Formulota";
			5:
				Escribir "Tortillas horneadas";
				Escribir "Ingrese el valor de a: ";
				Leer a;
				Escribir "Ingrese el valor de b: ";
				Leer b;
				area <- (a + 5) * (b + 3);
				maiz <- area;
				Escribir "Jonathan y Camila necesitar�n ", maiz, " gramos de ma�z para hacer su tortilla.";
			De Otro Modo:
				Escribir "Opci�n inv�lida";
			6:
				Escribir 
		FinSegun
	Hasta Que expresion_logica
	
FinProceso
