Proceso Menu
	// Autor: Jorge Iván Martínez Rodríguez.
	definir opcion,opci, numero_de_llantas, num, x, categoria, dia, prim, unidad, decenas, centenas, cantidad, contador Como Entero;
	definir number, costo_de_llantas, x1, x2, a,b,c, compra, n, salario , casa, enganche ,meses, cal1, cal2, cal3, promedio, montoCompra, montoConDescuento, porcentajeDescuento, horas, tota, extra, extra2, precio, precioTotal, clave,camisa, descuento, aumento, sueldo, total, costo, piezas, inversion, credito, interes, prestamo, enfermadad, hijos, dias como real;
	Definir nombre, nombre2, nombreArticulo, empleado como texto;
	Repetir
		Limpiar Pantalla;
		Escribir "Menu de condicionales";
		Escribir " (1) Condicionales simples";
		Escribir " (2) Condicionales dobles";
		Escribir " (3) Condicionales multiples";
		Escribir " (4) Salir";
		leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Condicionales simples";
				Escribir "=====================";
				Escribir " (1) Valor absoluto";
				Escribir " (2) Venta de llantas";
				Escribir " (3) Super Market";
				Escribir " (4) Ecuacion cuadratica";
				Escribir " (5) Pago de colegiatura";
				Escribir " (6) Pago de casa";
				leer opci;
				Segun opci Hacer
					1:
						Escribir "Valor absoluto";
						Escribir "==============";
						Escribir "Ingresa número ";
						leer number;
						si number<0 entonces 
							number<--1*number;
						FinSi
						Escribir "El valor absoluto es:",number;
						Esperar 4 Segundos;
					2:
						Escribir "Venta de llantas";
						Escribir "================";
						Escribir "Ingrese el numero de llantas a comprar";
						Leer numero_de_llantas;
						Si numero_de_llantas >0 y numero_de_llantas < 51 Entonces
							Si numero_de_llantas <= 4 Entonces
								total <- numero_de_llantas * 800;
							SiNo
								total <- numero_de_llantas * 700;
							Fin Si
							Escribir "total a pagar es ", total;
							Esperar 4 Segundos;
						SiNo
							Escribir "numero de llantas incorrecto";
							Esperar 4 Segundos;
						Fin Si
					3:
						Escribir "Super market";
						Escribir "================";
						num <- azar(100);
						Escribir Sin Saltar"Ingresa la cantidad de la compra ";
						Leer compra;
						Si compra >= 0 Entonces
							Escribir "Tu numero al azar es ", num;
							Si num < 74 Entonces
								compra <- compra -(compra*0.15);
								Escribir "La cantidad a pagar con 15% de descuento es de ", compra; 
								Esperar 4 Segundos;
							SiNo
								compra <- compra -(compra*0.20);
								Escribir "La cantidad a pagar con 20% de descuento es de ", compra; 
								Esperar 4 Segundos;
							FinSi
						SiNo
							Escribir "";
							Escribir "La cantidad ingresada es invalida";
							Esperar 4 Segundos;
							Escribir "";
						FinSi
					4:
						Escribir "Ecuacion Cuadratica";
						Escribir "================";
						Escribir "Ingresa valores a,b,c";
						Leer a,b,c;
						x1<-(-b+raiz(b*b-4*a*c))/(2*a);
						x2<-(-b-raiz(b*b-4*a*c))/(2*a);
						Escribir "x1= ",x1;
						Escribir "x2= ",x2;
						Esperar 4 Segundos;
					5:
						Escribir "Pago colegiatura";
						Escribir "================";
						Escribir "Ingrese el total de la compra";
						Leer compra;
						Escribir "Escribe un numero";
						Leer n;
						n <- azar(101);
						Si n < 74 y n > 75 Entonces
							descuento <- compra * 0.15;
						SiNo
							descuento <- compra * 0.25;
						FinSi
						Escribir "El total a pagar es de ", compra - descuento;
						Escribir "El descuento aplicado es de  ", descuento;
						Esperar 4 Segundos;
					6:
						Escribir "Compra de casa";
						Escribir "================";
						Escribir Sin Saltar "Ingresa tu salario mensual $ ";
						leer salario;
						Escribir Sin Saltar "Ingresa costo de la casa $ ";
						Leer casa;
						Si salario >= 0 y casa >= 0 Entonces
							Si salario >= 8000 Entonces
								Escribir " ";
								enganche <- casa * 0.15;
								Escribir "El enganche es de $ ", enganche;
								casa <- casa - enganche;
								meses <- casa /(5*12);
								Escribir "Los pagos a realizar son $ ",meses," mensuales";
								Esperar 2 Segundos;
								Escribir "a cinco años";
								Esperar 4 Segundos;
							FinSi
							Si salario >= 4000 y salario < 8000 Entonces
								Escribir " ";
								enganche <- casa * 0.25;
								Escribir "El enganche es de $ ", enganche;
								casa <- casa - enganche;
								meses <- casa /(10*12);
								Escribir "Los pagos a realizar son $ ", meses," mensuales";
								Esperar 2 Segundos;
								Escribir "a diez años";
								Esperar 4 Segundos;
							FinSi
							Si  salario < 4000  Entonces
								Escribir " ";
								Escribir "El ingreso no es suficiente para adquirir una casa";
								Esperar 4 Segundos;
							FinSi
						SiNo
							Escribir "El dato introduccido es invalido ";
							Esperar 4 Segundos;
						FinSi
					De Otro Modo:
						Escribir "Opcion incorrecta";
						Esperar 4 Segundos;
				FinSegun
			2:
				Escribir "Condicionales Dobles";
				Escribir "=====================";
				Escribir " (1) Aprobado y no aprobado";
				Escribir " (2) Producto almacén";
				Escribir " (3) Salario semanal";
				Escribir " (4) Vocal o consonante";
				Escribir " (5) Descuento de clave en articulo";
				Escribir " (6) Compra de camisas";
				Escribir " (7) Refacciones";
				Escribir " (8) Nombre inicia con mayusculas o minuscula";
				leer opci;
				Segun opci Hacer
					1:
						Escribir "Aprobado no aprobado";
						Escribir "====================";
						Escribir "Ingresa tu calificación de las 3 unidades solo valores del 1 al 10";
						Leer cal1, cal2, cal3;
						Promedio <- (cal1 + cal2 + cal3) / 3;
						si Promedio >= 8 y Promedio <= 10 Entonces
							Escribir "Felicidades has aprobado: ", promedio;
							Esperar 4 Segundos;
						sino 
							Escribir "Has reprobado";
							Esperar 4 Segundos;
						FinSi
					2:
						Escribir "Producto almacén";
						Escribir "================";
						porcentajeDescuento <- 0.20; 
						
						Escribir "Ingrese el monto de la compra: ";
						Leer montoCompra;
						
						Si montoCompra > 1000 Entonces
							montoConDescuento <- montoCompra - (montoCompra * porcentajeDescuento);
						Sino
							montoConDescuento <- montoCompra;
						FinSi
						Escribir "El monto a pagar con descuento es: ", montoConDescuento;
						Escribir "No hay descuento";
						Esperar 4 Segundos;
						si montoCompra <= 0 Entonces
							Escribir "Valor invalido";
							Esperar 4 Segundos;
						FinSi
					3:
						Escribir "Salario semanal";
						Escribir "===============";
						Escribir Sin Saltar "Ingresa horas trabajadas por el obrero";
						leer horas;
						Escribir " ";
						Si horas >= 0 Entonces
							Si horas < 40 Entonces
								tota <- horas * 16;
								Escribir "por ",horas," horas.";
								Escribir "No hay horas extra";
								Escribir "El total a pagar es $ ", tota;
							SiNo
								Escribir "Se trabajaron ",horas," horas";
								extra <- horas - 40;
								tota <- (horas - extra) * 16;
								extra2 <- extra * 32;
								Escribir "Por ",extra," extras el pago es $ ",extra2;
								Escribir "Mas pago de 40 horas $ ",tota;
								tota <- tota + extra2;
								Escribir "El total a pagar es $ ",tota;
							FinSi
							Esperar 4 Segundos;
						SiNo
							Escribir "El numero de horas es invalido";
						FinSi
						Esperar 4 Segundos;
					4:
						Escribir "Inicia Vocal o consonante";
						Escribir sin saltar "Ingresa Nombre ";
						Leer nombre;
						nombre2 <- Minusculas(nombre);
						Si Longitud(nombre2) <= 30 y Longitud(nombre2) >= 3 Entonces
							si Subcadena(nombre2, 0, 0) = "a" Entonces
								Escribir 'El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
							SiNO
								Si Subcadena(nombre2, 0, 0) = "e" Entonces
									Escribir "El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
								SINO
									Si Subcadena(nombre2, 0, 0) = "¡" Entonces
										Escribir "El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
									SiNo
										Si Subcadena(nombre2, 0, 0) = "o" Entonces
											Escribir "El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
										SiNo
											Si Subcadena(nombre2, 0, 0) = "u" Entonces
												Escribir "El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
											SiNO
												Escribir "El Nombre de ", nombre," inicia con consonante ", Subcadena(nombre2, 0, 0);
											Finsi
										Finsi
									Finsi
								finsi
							Finsi
						SiNO Escribir "El numero de caracteres ", Longitud(nombre), " es invalido [3-30]";
						FinSi
						Esperar 4 Segundos;
					5:
						Escribir "Descuento de clave en articulo";
						Escribir "Ingrese el nombre del artículo (entre 3 y 30 caracteres): ";
						Leer nombreArticulo;
						Si Longitud(nombreArticulo) < 3 O Longitud(nombreArticulo) > 30 Entonces
							Escribir "Error: El nombre del artículo debe tener entre 3 y 30 caracteres.";
						Sino
							Escribir "Ingrese la clave del artículo (1, 2 o 3): ";
							Leer clave;
							
							Si clave = 1 O clave = 2 O clave = 3 Entonces
								Escribir "Ingrese el precio del artículo: ";
								Leer precio;
								
								Si precio > 0 Entonces
									Segun clave hacer
										1:
											precioTotal <- precio - (precio * 0.10);
										2:
											precioTotal <- precio - (precio * 0.20);
										3: 
											precioTotal <- precio - (precio * 0.30);	
										De Otro Modo:
											
									FinSegun
									Escribir "El precio total a pagar es: ", precioTotal;
								Sino
									Escribir "Error: El precio debe ser un número positivo.";
								FinSi
							Sino
								Escribir "Error: La clave ingresada no es válida. Debe ser 1, 2 o 3.";
							FinSi
						FinSi
						Esperar 4 Segundos;
					6:
						Escribir "Compra de camisas";
						Escribir Sin Saltar "Ingresa el Numero de camisas a comprar ";
						leer camisa;
						Escribir Sin Saltar "Precio de camisa ";
						Leer  precio;
						precio <- precio * camisa;
						Escribir "";
						Si camisa > 0 Entonces
							Si camisa < 3 Entonces
								Escribir "Por la compra de ", camisa," camisas";
								descuento <- (precio * 0.10);
								Escribir "descuento por comprar: ",descuento ;
								precio <- precio - descuento;
								Escribir "Total a pagar es ", precio;
							SiNo
								Si camisa >= 3 Entonces
									Escribir "Por la compra de ", camisa," camisas";
									descuento <-(precio * 0.20);
									Escribir "descuento por comprar: ",descuento ;
									precio <- precio - descuento;
									Escribir "Total a pagar es ", precio;
								FinSi
							FinSi
						SiNo
							Escribir "Ingreso un dato invalido";
						FinSi
						Esperar 4 Segundos;
					7:
						Escribir "Refacciones";
						
						
					8:
						Escribir "Vocal o consonante";
						Escribir sin saltar "Ingresa Nombre ";
						Leer nombre;
						nombre2 <- Minusculas(nombre);
						Si Longitud(nombre2) <= 30 y Longitud(nombre2) >= 3 Entonces
							si Subcadena(nombre2, 0, 0) = "a" Entonces
								Escribir 'El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
							SiNO
								Si Subcadena(nombre2, 0, 0) = "e" Entonces
									Escribir "El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
								SINO
									Si Subcadena(nombre2, 0, 0) = "¡" Entonces
										Escribir "El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
									SiNo
										Si Subcadena(nombre2, 0, 0) = "o" Entonces
											Escribir "El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
										SiNo
											Si Subcadena(nombre2, 0, 0) = "u" Entonces
												Escribir "El Nombre de ", nombre, " inicia con vocal ", Subcadena(nombre2, 0, 0);
											SiNO
												Escribir "El Nombre de ", nombre," inicia con consonante ", Subcadena(nombre2, 0, 0);
											Finsi
										Finsi
									Finsi
								finsi
							Finsi
						SiNO Escribir "El numero de caracteres ", Longitud(nombre), " es invalido [3-30]";
						FinSi
						Esperar 4 Segundos;
					De Otro Modo:
						Escribir "opcion incorrecta";
				FinSegun
			3:
				Escribir "Condicionales Multiples";
				Escribir "=======================";
				Escribir " (1) Sueldo de Trabajador";
				Escribir " (2) Hospital en crisis";
				Escribir " (3) Descripción de día de la semana";
				Escribir " (4) Descripción de el mes de año";
				Escribir " (5) Números romanos";
				leer opci;
				Segun opci Hacer
					1:
						Escribir "Sueldo de trabajor";
						Escribir "         TIPO DE TRABAJADOR       ";
						Escribir "  1  ----------------------10%";
						Escribir "  2  ----------------------15%";
						Escribir "  3  ----------------------20%";
						Escribir "  4  ----------------------30%";
						Escribir "  Prima 5%";
						Escribir "  Prima es de acuerdo al numero de hijos";
						Escribir "";
						Para x <- 1 Hasta 1 Con Paso 1 Hacer
							aumento <- 0;
							sueldo <- 0;
							Escribir "Empleado ",x;
							Escribir "Ingrese nombre del empleado";
							Leer empleado;
							Escribir "Ingresa el sueldo";
							leer sueldo;
							Escribir "Ingresa la cantidad de hijos que tiene";
							leer hijos;
							Escribir "Ingresa la Tipo de trabajador: ", 1,2,3,4;
							leer categoria;
							si categoria > 0 y categoria < 5 Entonces
								si categoria = 1 Entonces
									aumento <- sueldo + (sueldo * 0.10);
									prim <- hijos* (sueldo * 0.05);
									total <- prim;
								SiNo
									si categoria = 2 Entonces
										aumento <- sueldo + (sueldo * 0.15);
										prim <- hijos*(sueldo * 0.05);
										total <- prim;
									SiNo
										si categoria = 3 Entonces
											aumento <- sueldo + (sueldo * 0.20);
											prim <- hijos*(sueldo * 0.05);
											total <- prim;
										SiNo
											aumento <- sueldo + (sueldo * 0.30);
											prim <- hijos*(sueldo * 0.05);
											total <- prim;
										FinSi
									FinSi
								FinSi
								Escribir " ";
								Escribir "====================================================";
								Escribir " Nombre del trabajador es: ", empleado;
								Escribir " Tu aumento es: ", total;
								Escribir " Tu sueldo de tipo de trabajador es: ", aumento;
								Escribir " Tu numero de hijos es: ", hijos;
								Escribir " Tu nuevo sueldo es de: ", total + aumento;
								Escribir "====================================================";
								Escribir " ";
								
							SiNo
								Escribir "Ingresa una opcion correcta";
								x <- x-1;
							FinSi
							Esperar 3 Segundos;
						FinPara
						
					2:
						Escribir "Hospital en crisis";
						Escribir "Tipo de enfermedad a dianosticar:  ";
						Escribir "1  ------------------------ $1500";
						Escribir "2  ------------------------ $1700";
						Escribir "3  ------------------------ $1500";
						Escribir " ";
						Escribir "Ingresa el nombre del paciente";
						leer nombre;
						Escribir "Ingresa el tipo de enfermedad";
						leer enfermadad;
						Escribir "Ingresa la numero de dias ";
						leer dias;
						Escribir "";
						Si enfermadad >= 1 y enfermadad <= 3 Entonces
							Segun enfermadad Hacer
								1:
									Escribir "Nombre del paciente ", Mayusculas(nombre);
									Escribir "Dias Hospitalizado ",dias;
									Escribir "Tipo de enfermedad ", enfermadad;
									total <- 1500 * dias;
									Escribir "Costo total a pagar: $", total;
								2:
									Escribir "Nombre del paciente ", Mayusculas(nombre);
									Escribir "Dias Hospitalizado ",dias;
									Escribir "Tipo de enfermedad ", enfermadad;
									total <- 1700 * dias;
									Escribir "Costo total a pagar: $", total;
								3:
									Escribir "Nombre del paciente ", Mayusculas(nombre);
									Escribir "Dias Hospitalizado ",dias;
									Escribir "Tipo de enfermedad ", enfermadad;
									total <- 1900 * dias;
									Escribir "Costo total a pagar: $", total;
								De Otro Modo:
									Escribir "No hay mas tipos";
							FinSegun
						SiNo
							Escribir "tipo de enfermedad ", enfermadad," Incorrecto";
						FinSi
						Esperar 4 Segundos;
						
					3:
						Escribir "Descripción de dia de la semana";
						Escribir "1. Domingo ";
						Escribir "2. Lunes";
						Escribir "3. Martes";
						Escribir "4. Miercoles";
						Escribir "5. Jueves";
						Escribir "6. Viernes";
						Escribir "7. Sabado";
						Escribir " ";
						Escribir "Ingresa el numero de dia ";
						leer dia;
						Si dia >= 1 y dia <= 7 Entonces
							Segun dia  Hacer
								1:
									Escribir "DOMINGO DIA FELIZ";
								2:
									Escribir "LUNES DIA DE LA LUNA";
								3:
									Escribir "MARTES DIA DE MARTE";
								4:
									Escribir "MIERCOLES DIA DE MERCURIO";
								5:
									Escribir "JUEVES DIA DE JUPITER";
								6:
									Escribir "VIERNES DEIA DE VENUS";
								7:
									Escribir "SABADO DIA DE SATURNO";
									
								De Otro Modo:
									Escribir "no hay otro dia";
							FinSegun
						SiNo
							Escribir "Dia ", dia," Incorrecto";
						FinSi
						Esperar 4 Segundos;
					4:
						Escribir "Descripción de el mes de año";
						Escribir "|  1  |        Enero        |";
						Escribir "|  2  |        Febrero      |";
						Escribir "|  3  |        Marzo        |";
						Escribir "|  4  |        Abril        |";
						Escribir "|  5  |        Mayo         |";
						Escribir "|  6  |        Junio        |";
						Escribir "|  7  |        Julio        |";
						Escribir "|  8  |        Agosto       |";
						Escribir "|  9  |        Septiembre   |";
						Escribir "|  10 |        Octubre      |";
						Escribir "|  11 |        Noviembre    |";
						Escribir "|  12 |        Diciembre    |";
						Escribir " ";
						Escribir sin saltar "Ingresa el numero de Mes ";
						leer meses;
						Si meses >= 1 y meses <= 12 Entonces
							Segun meses Hacer
								1:
									Escribir "Enero es el primer mes del año en el calendario gregoriano y tiene 31 días.";
								2:
									Escribir "Febrero es el segundo mes del año en el calendario gregoriano. Tiene 28 días y";
									Escribir "29 en los años bisiestos.";
								3:
									Escribir "Marzo es el tercer mes del año en el calendario gregoriano y tiene 31 días.";
								4:
									Escribir "Abril es el cuarto mes del año y es uno de los cuatro meses que tienen 30 días.";
								5:
									Escribir "Mayo es el quinto mes del año en el calendario gregoriano y tiene 31 días.";
								6:
									Escribir "Junio es el sexto mes del año en el Calendario Gregoriano y tiene 30 días.";
								7:
									Escribir "Julio es el séptimo mes del año en el calendario gregoriano y tiene 31 días.";
								8:
									Escribir "Agosto es el octavo mes del año en el calendario gregoriano y tiene 31 días.";
								9:
									Escribir "Septiembre es el noveno mes del año en el calendario gregoriano y tiene 30 días.";
								10:
									Escribir "Octubre es el décimo mes del año en el calendario gregoriano y tiene 31 días.";
								11:
									Escribir "Noviembre es el undécimo y penúltimo mes del año en el calendario gregoriano y tiene 30 días.";
								12:
									Escribir "Diciembre es el duodécimo y último mes del año en el calendario gregoriano y tiene 31 días.";
									
								De Otro Modo:
									Escribir "Dato inválido";
							FinSegun
						SiNo
							Escribir "Meses ", meses," Incorrecto";
						FinSi
						Esperar 4 Segundos;
					5:
						Escribir "Números romanos";
						Escribir sin saltar "Ingresa la cantidad ";
						Leer cantidad;
						unidad <- cantidad mod 10;
						decenas <- trunc(cantidad / 10);
						
						Escribir "Espera un momento";
						Para contador <- 1 hasta 4 Hacer
							Escribir sin saltar ".";
							Esperar 1 segundo;
						FinPara
						Escribir "";
						
						
						Segun decenas hacer
							1:
								Escribir sin saltar "X ";
							2:
								Escribir sin saltar "XX ";
							3:
								Escribir sin saltar "XXX ";
							4:
								Escribir sin saltar "XL ";
							5: 
								Escribir sin saltar "L ";
							6:
								Escribir sin saltar "LX ";
							7:
								Escribir sin saltar "LXX ";
							8:
								Escribir sin saltar "XL ";
							9:
								Escribir sin saltar "XC ";
						FinSegun
						
						Segun unidad hacer
							1:
								Escribir sin saltar "I ";
							2:
								Escribir sin saltar "II ";
							3:
								Escribir sin saltar "III ";
							4:
								Escribir sin saltar "IV ";
							5: 
								Escribir sin saltar "V ";
							6:
								Escribir sin saltar "VI ";
							7:
								Escribir sin saltar "VII ";
							8:
								Escribir sin saltar "VIII ";
							9:
								Escribir sin saltar "IX ";
						FinSegun
						
						Escribir "";
					De Otro Modo:
						Escribir "";
				FinSegun
				Esperar 4 Segundos;
			4:
			De Otro Modo:
				Escribir "Opcion incorrecta";
		FinSegun
	Hasta Que opcion = 4;
	
FinProceso
