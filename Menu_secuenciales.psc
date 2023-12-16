Proceso Menu_secuenciales
	Definir opcion, edad, fcm, vali, resultado Como Entero;
	Definir pesos, dolares, euros, valo, salario, incremento,a,b,c,x1,x2, ginecologia, traumatologia, pediatria,presupuesto,precio, ganancia, preciopublico, catetoA, catetoB, hipotenusa Como Real;
	Repetir
		Escribir "Menu secuenciales";
		Escribir " (1) Cambio de divisa";
		Escribir " (2) Valor absoluto";
		Escribir " (3) Frecuencia cardiaca máxima";
		Escribir " (4) Incremento salarial";
		Escribir " (5) Doblar número y multiplicar por 25";
		Escribir " (6) Raíces de ecuación cuadrática";
		Escribir " (7) Presupuesto de hospital";
		Escribir " (8) Ganancia de artículo";
		Escribir " (9) Cálculo de hipotenusa";
		Escribir " (10) Índice de masa corporal";
		Escribir " (11) Salír";
		leer opcion;
		Segun opcion Hacer
			1:
				Escribir "Cambio de divisa";
				Escribir "Ingrese la cantidad de pesos mexicanos que desea cambiar:";
				Leer pesos;
				dolares <- pesos / 2 / 19.75;
				euros <- dolares * 0.887;
				Escribir "1000 pesos equivalen a";
				Escribir dolares, " Dolares";
				Escribir Euros, " Euros";
				Esperar 4 Segundos;
			2:
				Escribir "Valor absoluto";
				
				Escribir "Ingresa el valor";
				Leer valo;
				Escribir "Valor absoluto ",abs(valo);
				Esperar 4 Segundos;
			3:
				Escribir "Frecuencia cardiaca máxima";
				Escribir "Ingrese la edad de la persona:";
				Leer edad;
				
				fcm <- 220 - edad;
				
				Escribir " La frecuencia cardíaca máxima es: ", fcm, " latidos por minuto";
				Esperar 4 Segundos;
			4:
				Escribir "Incremento salarial";
				Escribir 'Ingresar salario actual';
				Leer salario;
				Incremento<-salario*1.25;
				Escribir 'El nuevo salario es:$ ',Incremento;
				Esperar 4 Segundos;
			5:
				Escribir "Doblar número y multiplicar por 25";
				Escribir "Ingrese un valor entero:";
				Leer vali;
				
				resultado <- (vali * 2) * 25;
				
				Escribir "El resultado de doblar el valor y multiplicarlo por 25 es: ", resultado;
				Esperar 4 Segundos;
			6:
				Escribir "Cuadraticas";
				Escribir "Ingresa valores a,b,c";
				Leer a,b,c;
				x1<-(-b+raiz(b*b-4*a*c))/(2*a);
				x2<-(-b-raiz(b*b-4*a*c))/(2*a);
				Escribir "x1= ",x1;
				Escribir "x2= ",x2;
				Esperar 4 Segundos;
			7:
				Escribir "Presupuesto hospital";
				Escribir 'Hospital presupuesto';
				Escribir 'Ginecología 40%';
				Escribir 'Traumatología 30%';
				Escribir 'Pediatría 30%';
				Escribir 'Ingresa el presupuesto';
				Leer presupuesto;
				Escribir 'Ginecología ', presupuesto*0.40;
				Escribir 'Traumatologia ', presupuesto*0.30;
				Escribir 'Pediatría ', presupuesto*0.30;
				Esperar 4 Segundos;
			8:
				Escribir "Ganancia de articulo";
				Escribir "Ingrese el precio de compra del artículo:";
				Leer precio;
				
				ganancia <- precio * 0.30;
				preciopublico <- precio + ganancia;
				
				Escribir "La ganancia por artículo es: ", ganancia;
				Escribir "El precio al público del artículo es: ", preciopublico;
				Esperar 4 Segundos;
			9:
				Escribir "Calculo de hipotenusa";
				Escribir"Ingrese la longitud del cateto A:";
				Leer catetoA;
				
				Escribir "Ingrese la longitud del cateto B:";
				Leer catetoB;
				
				hipotenusa <- raiz(catetoA^2 + catetoB^2);
				
				Escribir "La longitud de la hipotenusa es: ", hipotenusa;
				Esperar 4 Segundos;
			10:
				Escribir "IMC";
				Escribir"Ingrese la masa corporal en kilogramos:";
				Leer masa;
				
				Escribir"Ingrese la altura en metros:";
				Leer altura;
				
				imc <- masa / (altura^2);
				
				Escribir "El índice de masa corporal (IMC) es: ", imc;
				Esperar 4 Segundos;
		FinSegun
	Hasta Que opcion = 11
	
FinProceso
