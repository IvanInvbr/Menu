Proceso Menu_omega
	Definir opcion,tragos, tragosporpersona, numerador1, denominador1, numerador2, denominador2, numeradorResultado, denominadorResultado,animalessinmesa,inv, numOriginal, num,conta,longitni,invertido,ingresado,sumaii Como Entero;
	Definir a, b, area, maiz, inicio, fi, multiplo, contador, i, x, v, z, resultado, t como real;
	Definir entrada, numera,numri,numinv como cadena;
	Repetir
		Escribir "Menu de omegas";
		Escribir " (1) Contando enteros en l�nea";
		Escribir " (2) La parranda 2";
		Escribir " (3) Suma de fracciones simple";
		Escribir " (4) Formulota";
		Escribir " (5) Tortillas horneadas";
		Escribir " (6) Invertir digitos";
		Escribir " (7) �Cu�ntos?";
		Escribir " (8) Repartir par";
		Escribir " (9) Prom de los animales";
		Escribir " (10) Taz�n de fruta";
		Escribir " (11) Velocidad m�xima";
		Escribir " (12) Evaluando una expresi�n complicada";
		Escribir " (13) 3 digit palindrome";
		Escribir " (14) Suma digitos";
		Escribir " (16) Salir";
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
				Esperar 4 Segundos;
			6:
				Escribir "Invertir d�gitos";
				Definir numera,numri,numinv Como Caracter;
				Definir conta,longitni,invertido,ingresado,sumaii Como Entero;
				
				Escribir "Ingresa el n�mero";
				Leer numera;
				longitni<-Longitud(numera);
				numinv<-"";
				
				conta<-longitni;
				Repetir
					numri<-Subcadena(numera,conta,conta);
					numinv<-Concatenar(numinv,numri);
					conta<-conta-1;
				Hasta Que (Longitud(numinv))=(Longitud(numera))
				ingresado<-ConvertirANumero(numera);
				invertido<-ConvertirANumero(numinv);
				sumaii<-ingresado+invertido;
				Escribir sumaii;
				Esperar 4 Segundos;
			7: 
				Escribir "�Cu�ntos?";
				Escribir "Ingrese el valor de inicio: ";
				Leer inicio;
				
				Escribir "Ingrese el valor de fin: ";
				Leer fi;
				
				Escribir "Ingrese el m�ltiplo: ";
				Leer multiplo;
				
				contador <- 0;
				
				para i <- inicio Hasta fi Con Paso 1 Hacer
					Si i Mod multiplo = 0 Entonces
						contador <- contador + 1;
					FinSi
				FinPara
				Escribir "La cantidad de n�meros entre ", inicio, " y ", fi, " (incluyendo esos valores) que son m�ltiplos de ", multiplo, " es: ", contador;
				Esperar 4 Segundos;
			8: 
				Escribir "Repartir par";
			9:
				Escribir "Prom de animales";
				Escribir "Ingrese la cadena de entrada:";
				Leer entrada;
				
				animalessinmesa <- 0;
				
				Para i <- 1 Hasta Longitud(entrada) Con Paso 1 hacer
					Si Subcadena(entrada, i, 1) = "@" Entonces
						Si i MOD 4 <> 0 Entonces
							animalessinmesa <- animalessinmesa + 1;
						Fin Si
					Fin Si
				Fin Para
				
				Escribir "Cantidad de animales sin mesa: ", animalessinmesa;
				Esperar 4 Segundos;
			12:
				Escribir "Evaluacion de una expresi�n complicada";
				Escribir "Ingrese tres n�meros reales separados por espacios:";
				Leer x, v, z;
				
				resultado <- (x * v) + z^2;
				
				Escribir "El resultado de la expresi�n es:", resultado;
				Esperar 4 Segundos;
			13: 
				Escribir "3 digit palindrome";
				inv<-0;
				
				Leer numOriginal;
				num<-numOriginal;
				
				Repetir
					inv<- (inv*10) + (num Mod 10);
					num<- trunc (num/10);
				Hasta Que num=0
				
				Si inv=numOriginal Entonces
					Escribir "El numero ", numOriginal, " es palindromo..!";
				Sino
					Escribir "El numero ", numOriginal, " no es palindromo..!";
				FinSi 
				Esperar 4 Segundos;
			15:
				Escribir "N�meros vecinos";
				Escribir "Ingresa el n�mero de casos de prueba:";
				Leer T;
				Para i <- 1 Hasta T Con Paso 1 Hacer
					Escribir "Ingresa dos n�meros enteros separados por un espacio:";
					Leer a, b;
					Si Abs(a - b) = 1 Entonces
						Escribir "SI";
					SiNo
						Escribir "NO";
					FinSi
				FinPara
				Esperar 4 Segundos;
			De Otro Modo:
				Escribir "Opci�n inv�lida";
				
				
				
		FinSegun
	Hasta Que opcion = 16
	
FinProceso
