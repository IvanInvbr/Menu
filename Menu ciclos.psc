Proceso Menu_ciclos
	//Autor: Jorge Iván Martínez Rodríguez
	Definir opcion, c, dece, uni, conta, j, base, altura, vocal, espe, espaci, conso,saludar,a,k,num12, num22  Como Entero;
	Definir n,h1, p2, k3,type, val1,suma, val2, cuenta,f,tomo, contador, l, v,h,m,s,d,e,mayor, menor, num, promedio,x,i,t,z,be Como Real;
	Definir cadvocal, consonantes, espacio, especiales, nombre, num1, num2, name,clav,calif,correo,text,cal,co1, co como cadena;
	Definir p,data,q,pipe,r,g,b, pe,ze, names,letra Como Caracter;
	Repetir
		Limpiar Pantalla;
		Escribir "Menu de Ciclos";
		Escribir " (1) Ciclos Para";
		Escribir " (2) Ciclos Repetir Hasta que";
		Escribir " (3) Ciclos Mientras";
		Escribir " (4) Salir";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Ciclos para";
				Escribir " (1) Saludo";
				Escribir " (2) Cultivo zanahorias";
				Escribir " (3) Figuras Geometricas";
				Escribir " (4) Series númericas";
				Escribir " (5) Cuenta letras";
				Escribir " (6) Dato númerico";
				Escribir " (7) Inversor de nombre";
				Escribir " (8) Cuenta regresiva";
				Escribir " (9) Calificaciones al azar";	
				Escribir " (10) Clave y valor";
				Escribir " (11) Correo electrónico";
				leer opcion;
				Segun opcion Hacer
					1:
						Escribir "Saludo";
						Para contador<-1 Hasta 10 Con Paso 1 Hacer
							Escribir contador,".- Hola a todos :)";
						Fin Para
						Esperar 4 Segundos;
					2:
						Escribir "Siembra de zanahorias";
						
						Para c <- 1 Hasta 40 Con Paso 1 Hacer
							Escribir Sin Saltar "-"; 
						Fin Para
						
						Escribir "";
						
						Escribir Sin Saltar "Ingresa número total de zanahorias";
						Leer z;
						Si z >= 1 y z <= 1000 Entonces
							Para c <- 1 Hasta z Con Paso 1 Hacer
								Escribir Sin Saltar "* ";
								Si c mod 10 = 0 Entonces
									Escribir ""; 
								Fin Si
							Fin Para
							
							Escribir "";
							
						SiNo
							Escribir "Son un chingo de Zanahorias";
						Fin Si
						Esperar 4 Segundos;
					3:
						Escribir "Figuras Geometricas";
						Escribir "Ingresa la opción";
						Escribir "Opción 1 Cuadrado";
						Escribir "Opción 2 Rectangulo";
						Escribir "Opción 3 Triangulo";
						Leer opcion;
						si opcion < 1 o opcion > 3 entonces
							Escribir "Opción incorrecta ";
						FinSi
						si opcion = 1 Entonces 
							Definir lado como entero;
							Escribir "Ingresa lado ";
							Leer lado;
							
							Para j <- 1 hasta lado Hacer
								Para conta <- 1 hasta lado con paso 1 Hacer
									Escribir sin saltar "* ";
								FinPara
								Escribir "";
							FinPara
						FinSi
						si opcion = 2 entonces 
							Escribir "Ingresa base ";
							Leer base;
							Escribir "Ingresa Altura";
							Leer altura;
							Para j <- 1 hasta altura Hacer
								para conta <- 1 hasta base con paso 1 hacer
									Escribir sin saltar " * ";
								FinPara
								Escribir "";
							FinPara
						FinSi
						si opcion = 3 entonces 
							Escribir "Ingresa Base";
							Leer base;
							Escribir "Ingresa altura";
							Leer altura;
							para j <- 1 hasta altura Hacer
								para conta <- 1 hasta base - j con paso 1 Hacer
									escribir sin saltar "*";
								FinPara
								escribir "";
							FinPara
							
						FinSi
						Esperar 4 Segundos;
					4:
						Escribir "Series númericas";
						Escribir "   1. Serie I         ";
						Escribir "   2. Serie II       ";
						Escribir "   3. Serie III      ";
						Escribir "   4. Serie IV        ";
						Esperar 4 Segundos;
						Limpiar Pantalla;
						Escribir " Ingresa el tipo de serie [I,II,III,IV]";
						Leer type;
						Escribir "";
						Segun type Hacer
							1:
								Escribir "Igresa la cantidad";
								Leer c;
								Para c <- c Hasta c * 100 Con Paso c Hacer
									Escribir Sin Saltar c,", ";
								FinPara
							2:
								Escribir "Igresa la cantidad";
								Leer c;
								Para c <- c Hasta c / 100 Con Paso -c / 100 Hacer
									Escribir Sin Saltar c,", ";
								FinPara
							3:
								
								Escribir " Ingresa el n término";
								leer n;
								h1 <- 1;
								p2 <- 1;
								Para cuenta <- 1 Hasta n - 2 Con Paso 1 Hacer
									k3 <- p2 + h1;
									h1 <- p2;
									p2 <- k3;
									Escribir Sin Saltar  p2 , " ";
									
								FinPara
							4:
								Escribir "  Ingresa el número";
								leer n;
								f <- 1;
								Escribir Sin Saltar " ";
								Para cuenta <- n Hasta 1 Con Paso -1 Hacer
									f <- f * cuenta;
									si cuenta >= 2 entonces
										Escribir Sin Saltar  cuenta , " * ";
									SiNo
										Escribir Sin Saltar  cuenta;
									Finsi		
								FinPara
								Escribir " = ", f;
								
							De Otro Modo:
								Escribir "El tipo de serie es invalida";
						FinSegun	
						
					5:
						Escribir "Cotador de letras";
						cadvocal <- "AEIOUÁÉÍÓÚ";
						vocal <- 0;
						espe <- 0;
						espaci <- 0;
						conso <- 0;
						consonantes <- "BCDFGHJKLMNPQRSTVXYZ";
						espacio <- " ";
						especiales <- "´";
						Escribir "Ingresa tu nombre: ";
						Leer nombre;
						nombre <- Mayusculas(nombre);
						
						Para c <- 0 hasta longitud(nombre) -1 con paso 1 Hacer
							Escribir sin saltar subcadena(nombre,c,c);
							Si subcadena(nombre,c,c) = "A" o subcadena(nombre,c,c) = "E" o subcadena(nombre,c,c) = "I" o subcadena(nombre,c,c) = "O" o subcadena(nombre,c,c) = "U" o subcadena(nombre,c,c) = "Á" o subcadena(nombre,c,c) = "É" o subcadena(nombre,c,c) = "Í" o subcadena(nombre,c,c) = "Ó" o subcadena(nombre,c,c) = "Ú" Entonces
								vocal <- vocal + 1;
							FinSi
							si subcadena(nombre,c,c) = "´" o subcadena(nombre,c,c) = "Á" o subcadena(nombre,c,c) = "É" o subcadena(nombre,c,c) = "Í" o subcadena(nombre,c,c) = "Ó" o subcadena(nombre,c,c) = "Ú" Entonces
								espe <- espe + 1;
							FinSi
							si subcadena(nombre,c,c) = " " Entonces
								espaci <- espaci + 1;
							FinSi
							si subcadena(nombre,c,c) = "B" o subcadena(nombre,c,c) = "C" o subcadena(nombre,c,c) = "D" o subcadena(nombre,c,c) = "F" o subcadena(nombre,c,c) = "G" o subcadena(nombre,c,c) = "H" o subcadena(nombre,c,c) = "J" o subcadena(nombre,c,c) = "K" o subcadena(nombre,c,c) = "L" o subcadena(nombre,c,c) = "M" o subcadena(nombre,c,c) = "N" o subcadena(nombre,c,c) = "P" o subcadena(nombre,c,c) = "Q" o subcadena(nombre,c,c) = "R" o subcadena(nombre,c,c) = "S" o subcadena(nombre,c,c) = "T" o subcadena(nombre,c,c) = "V" o subcadena(nombre,c,c) = "X" o subcadena(nombre,c,c) = "Y" o subcadena(nombre,c,c) = "Z" entonces
								conso <- conso + 1;
							FinSi
						FinPara
						Escribir "";
						
						Escribir "Vocales: ", vocal;
						Escribir "Consonantes: ", conso;
						Escribir "Caracteres extraños: ", espe;
						Escribir "Espacios en blanco: ", espaci;
						Esperar 4 Segundos;
					6:
						Escribir "Dato númerico";
						Escribir " Ingresa el numero [NO INGRESE LETRAS PARA QUE ESTE SEA VALIDO] ";
						Leer num1;
						v <- 0;
						Para l <- 0 Hasta Longitud(num1)-1 Con Paso 1 Hacer
							num2 <-SubCadena(num1,l,l);
							Si num2 = "0" o num2 = "1" o num2 = "2" o num2 = "3" o num2 = "4" o num2 = "5" o num2 = "6" o num2 = "7" o num2 = "8" o num2 = "9"  Entonces
								v <- v;
							SiNo
								v <- v +1;
							FinSi
						FinPara
						Si v = 0 Entonces
							Escribir "        Este es dato corecto";
						SiNo
							Escribir "        Este es dato invalido";
						FinSi
						Esperar 4 Segundos;
					7:
						Escribir "Inversor de nombre";
						Definir name como cadena;
						Definir v Como Real;
						Escribir "Ingresa tu nombre: ";
						Leer name;
						name <- Minusculas(name);
						Escribir "Tu nombre invertido es: ";
						Para v <- Longitud(name) Hasta 0 Con Paso -1 Hacer
							Escribir Sin Saltar Subcadena(name,v,v);
						FinPara
						Escribir "";
						Esperar 4 Segundos;
					8:
						Escribir "Cuenta regresiva";
						Escribir "Ingresa el numero de horas [MAXIMO 23]";
						leer h;
						Escribir "Ingresa el numero de minutos [MAXIMO 59]";
						leer m;
						Escribir "Ingresa el numero de segundos [MAXIMO 59]";
						leer s;
						Escribir "Creando proceso...";
						Esperar 5 Segundos;
						
						si h < 24 y h >= 0 y m <= 59 y m >= 0 y s <= 59 y s >= 0 Entonces
							Limpiar Pantalla;
							Escribir "==================";
							Escribir "Tiempo restante";
							Escribir h," : ",m," : ",s;
							Escribir "==================";
							Esperar 1 Segundos;
							si s = 0 Entonces
								si m = 0 Entonces
									si h > 0 Entonces
										m <- 60;
										h <- h - 1;
									FinSi
								FinSi
								si m > 0 Entonces
									s <- 59;
									m <- m - 1;
								FinSi
							FinSi
							para d <- 0 Hasta h * 60 * 60 + m * 60 + s Con Paso 1 Hacer
								si h = 0 y m = 0 y s = 0 Entonces
									Limpiar Pantalla;
									Escribir "           Termino la cuenta";
									s <- -1;
								FinSi
								si s >= 0 Entonces
									Limpiar Pantalla;
									Escribir "==================";
									Escribir "Tiempo restante";
									Escribir h," : ",m," : ",s;
									Escribir "==================";
									Esperar 1 Segundos;
									s <- s - 1;
									si s < 0 Entonces
										s <- 0;
									FinSi
									si s = 0 y m >= 0 Entonces
										Limpiar Pantalla;
										Escribir "==================";
										Escribir "Tiempo restante";
										Escribir h," : ",m," : ",s;
										Escribir "==================";
										Esperar 1 Segundos;
										si s = 0 y m = 0 y h > 0 Entonces
											Limpiar Pantalla;
											Escribir "==================";
											Escribir "Tiempo restante";
											Escribir h," : ",m," : ",s;
											Escribir "==================";
											Esperar 1 Segundos;
											h <- h -1;
											m <- 59;
											s <- 59;
										FinSi
										si m > 0 y s = 0 Entonces
											m <- m -1;
											m <- 0;
											s <- 59;
										FinSi
									FinSi
								FinSi
								Limpiar Pantalla;
								si s = 0 Entonces
									Escribir "==================";
									Escribir "Tiempo restante";
									Escribir h," : ",m," : ",s;
									Escribir "==================";
								FinSi
							FinPara
						SiNo
							Escribir "           Datos Incorrectos";
						FinSi
					9:
						Escribir "Calificaciones al azar";
						mayor <- 0;
						menor <- 11;
						promedio <- 0;
						Para c <- 1 Hasta 20 Con Paso 1 Hacer
							num <- azar(11);
							Escribir sin saltar num, " ";
							promedio <- promedio + num;
							Si num > mayor entonces
								mayor <- num;
								si num < menor entonces
									menor <- num;
								FinSi
							FinSi
						FinPara
						Escribir "";
						Escribir "Mayor: ", mayor;
						Escribir "Menor: ", menor;
						Escribir "Promedio: ", promedio/20;
						Escribir "";
						
					10:
						Escribir "Clave valor";
						data<-"01=9|02=5|03=9|04=8|05=8|06=5|07=9|08=5|09=9|10=5|";
						Escribir "Ingrese la clave del alumno a dos dígitos";
						Escribir "Ejemplo: 01";
						Leer clav;
						x<-Longitud(clav);
						z<-Longitud(data);
						t<-0;
						d<-0;
						n<-0;
						
						Si x>2 o x<2 Entonces
							Escribir "Clave no encontrada o clave no válida";
						SiNo
							Para i<-1 Hasta z Con Paso 1 Hacer
								p<-Subcadena(data,i,i);
								pipe<-"|";
								Si p=pipe Entonces
									t<-i-4;
									d<-i-1;
									q<-Subcadena(data,t,d);
									g<-Subcadena(q,0,2);
									Si g=clav Entonces
										r<-Subcadena(q,4,4);
										n<-ConvertirANumero(r);
									FinSi
								FinSi
							Fin Para
							Si n=0 Entonces
								b<-"cero";
							SiNo
								Si n=1 Entonces
									b<-"uno";
								SiNo
									Si n=2 Entonces
										b<-"dos";
									SiNo
										Si n=3 Entonces
											b<-"tres";
										SiNo
											Si n=4 Entonces
												b<-"cuatro";
											SiNo
												Si n=5 Entonces
													b<-"cinco";
												SiNo
													Si n=6 Entonces
														b<-"seis";
													SiNo
														Si n=7 Entonces
															b<-"siete";
														SiNo
															Si n=8 Entonces
																b<-"ocho";
															SiNo
																Si n=9 Entonces
																	b<-"nueve";
																FinSi
															FinSi
														FinSi
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
								
							FinSi
							Escribir "Estudiante de clave ",clav," tiene calificación de ",b;
						Fin Si
						Esperar 4 Segundos;
					11:
						Escribir "Correo electrónico";
						Escribir "Correos electrónicos válidos";
						Escribir "Dirección: @gmail.com";
						Escribir "Dirección: @outlook.com";
						Escribir "Dirección: @utng.edu.mx";
						Escribir "______________________________________";
						Escribir "";
						Escribir "Ingrese su correo electrónico";
						Leer correo;
						x<-Longitud(correo);
						ze<-"";
						
						Si x=0 o correo=" " o correo="	" Entonces
							Escribir "Correo no válido";
							
						SiNo
							Para i<-1 Hasta x Con Paso 1 Hacer
								pe<-SubCadena(correo,i,i);
								
								Si pe="@" Entonces
									ze<-Subcadena(correo,i,x);
									Si ze="@gmail.com" o ze="@outlook.com" o ze="@utng.edu.mx" Entonces
										Escribir "Correo electrónico válido";
									FinSi
								SiNo
									Si i=x y (ze<>"@gmail.com" y  ze<>"@outlook.com" y ze<>"@utng.edu.mx") Entonces
										Escribir "Correo electrónico no válido";
										
									FinSi
								Fin Si
							Fin Para
						FinSi
						Esperar 4 Segundos;
					De Otro Modo:
						Escribir "Opción incorrecta";
				FinSegun
				Esperar 4 Segundos;
				
			2:
				Escribir "Ciclos Repetir Hasta que";
				Escribir " (1) Validación de rango de número";
				Escribir " (2) Validación de nombre";
				Escribir " (3) Validación de de rango de número 2";
				Escribir " (4) Nombre vació";
				Escribir " (5) Validación de vocal";
				Leer opcion;
				Segun opcion Hacer
					1:
						Escribir "Validación de rango de número";
						Repetir
							Escribir "     Ingresa el numero entre 20-100";
							Leer n;
						Hasta Que n >= 20 y n <= 100
						Escribir "Dato valido";
						Esperar 4 Segundos; 
					2:
						Escribir "Validación de nombre";
						Repetir
							Escribir "Ingresa tu nombre, este debe de contener +3 Letras";
							Leer names;
							l <- Longitud(names);
						Hasta Que l >= 3 y l <= 50
						Escribir "";
						Escribir "Dato correcto.";
						Esperar 4 Segundos;
					3:
						Escribir "Validación de rango de número 2";
						Repetir
							Escribir Sin Saltar "Ingresa el numero entre [1-10 o 40-50] ";
							Leer n;
						Hasta Que n > 1 y n < 11 o n > 40 y n < 50
						Escribir "Este dato coincide asi que es correto";
						Esperar 4 Segundos; 
					4:
						Escribir "Nombre vació";
						Repetir
							Escribir "Ingresa tu nombre, este no debe estar vació";
							Leer names;
							l <- Longitud(names);
						Hasta Que l >= 1 y l <= 50
						Escribir "";
						Escribir "Dato correcto.";
						Esperar 4 Segundos;
					5:
						Escribir "Validación de vocal";
						Repetir
							Escribir Sin Saltar "Ingresa una letra";
							Leer letra;
						Hasta Que letra = "a" o letra = "e" o letra = "i" o letra = "o" o letra = "u"
						Escribir "Dato correcto";
						Esperar 4 Segundos;
					De Otro Modo:
						Escribir "Opción inválida";
				FinSegun
			3:
				Escribir "Ciclos Mientras";
				Escribir " (1) Saludar 10 veces";
				Escribir " (2) Calificaciones en cadena";
				Escribir " (3) Sembrado de zanahorias";
				Escribir " (4) Cuenta regresiva";
				Escribir " (5) Boleto lotería";
				Escribir " (6) Correo eletrónico valido";
				Escribir " (7) Todavía no";
				Leer opcion;
				Segun opcion Hacer
					1:
						Escribir "saludar 10 veces";
						Escribir " (1) Saludar 10 veces";
						saludar <- 1;
						Mientras saludar <= 10 Hacer
							Escribir saludar," Hola a todos!!";
							saludar <- saludar + 1 ;
						FinMientras
						Esperar 4 Segundos;
					2:
						Escribir "Calificaciones en cadena";
						a <- 1;
						k <- 3; 
						text <- "01=9.1|02=5.4|03=9.3|04=8.0|05=8.3|06=5.1|07=9.9|08=5.6|09=8.8|10=7.5";
						Escribir text;
						Escribir "";
						Mientras a <= 10 Hacer
							cal <- Subcadena(text,k,k+2);
							Escribir "la clave es ", a," tiene la calificacion de ", cal; 
							a <- a +1;
							k <- k + 7;
						FinMientras
						Esperar 4 Segundos;
						
					3:
						Escribir "Sembrado de zanahorias";
						Escribir "        Ingresa el numero de zanahoritas a plantar";
						Leer  c;
						v <- c - 10;
						Mientras c > 0 Hacer
							Si c = v Entonces
								Escribir "";
								v <- v - 10;
							FinSi
							Escribir Sin Saltar " <* ";
							c <- c -1;
							Si c > 0 Entonces
								Escribir Sin Saltar " <* ";
								c <- c -1;
							FinSi
						FinMientras
						Escribir "";
						Esperar 4 Segundos;
					4:
						Escribir "Cuenta regresiva";
						Leer n;
						Esperar 1 Segundos;
						Limpiar Pantalla;
						Mientras n >= 0 Hacer
							Escribir "     Cuenta Regresiva ", n;
							n <- n -1;
							Esperar 1 Segundos;
							Limpiar Pantalla;
						FinMientras
						Escribir "Acabo la cuenta regresiva";
						Esperar 2 Segundos;
					5:
						Escribir "Boleto lotería";
					6:
						Escribir "Correo electrónico válido";
						Escribir "    Ingresa tu correo electronico";
						leer co1;
						l <- Longitud(co1);
						co <- "@hotmail.com";
						a <- 0;
						be <- 12;
						f <- 0;
						Mientras a <= l Hacer
							Si Subcadena(co,a,a) = Subcadena(co1,l-be,l-be) Entonces
								f <- f;
							SiNo
								f <- f +1;
							FinSi
							be <- be-1;
							a <- a +1;
						FinMientras
						Si f = 0 Entonces
							Escribir "           El correo es valido";
						SiNo
							Escribir "El correo es invalido agregue la terminacion @hotmail.com";
						FinSi
						Esperar 4 Segundos;
					7:
						Escribir "Todavía no";
						Escribir " Ingresa el primer numero";
						Leer num12;
						Mientras num12 < 1000 Hacer
							Escribir "Ingresa el primer numero";
							Leer num12;
						FinMientras
						Escribir "Ingresa el segundo numero";
						Leer num22;
						Mientras num22 < 1000 o num22 <> num12 Hacer
							Escribir "Número inválido";
							Escribir "";
							Escribir "Ingresa el segundo numero";
							Leer num22;
						FinMientras
						Escribir "El número es válido";
						Esperar 3 Segundos;
					De Otro Modo:
						Escribir "opcion inválida";
				FinSegun
			De Otro Modo:
				Escribir "opción inválida";
		FinSegun
	Hasta Que opcion = 4
	
	
FinProceso
	