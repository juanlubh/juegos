///////////////////////////////////////////////////////////////// palo escogido al azar
Funcion palo <- PaloAzar (TiradaPalo)
	definir palo como texto;
	Segun TiradaPalo Hacer
		1:palo="picas";
		2:palo="corazones";
		3:palo="rombos";
		4:palo="treboles";
	Fin Segun
Fin Funcion
//////////////////////////////////////////////////////////////// carta escogida al azar
funcion carta=CartaAzar(TiradaCarta)
	definir carta como texto;
	segun TiradaCarta
		1: carta="as";
		2: carta="dos";
		3: carta="tres";
		4: carta="cuatro";
		5: carta="cinco";
		6: carta="seis";
		7: carta="siete";
		8: carta="ocho";
		9: carta="nueve";
		10: carta="diez";
		11: carta="jota";
		12: carta="reina";
		13:	carta="rey";
	FinSegun
FinFuncion
////////////////////////////////////////////////////////////////////// cantidad de dinero apostado >50
funcion apuesta=realizarapuesta(capital)
	definir apuesta como entero;
	escribir"¿cuanto dinero quieres apostar?(minimo 50€)";
	leer apuesta;
	Mientras apuesta<50 o apuesta >capital Hacer
		Escribir "Apuesta no valida vuelve a apostar";
		leer apuesta;
	Fin Mientras
FinFuncion
////////////////////////////////////////////////////////////////////////// carta escogida numero
Funcion escogido=escoger()
	Definir  escogido como numero;
	Escribir "Escribe que carta quieres entre 1 y 13";
	Leer escogido;
	Mientras escogido<1 o escogido>13 Hacer
		Escribir "Carata escofida no valida intentelo de nuevo";
		Leer escogido;
	Fin Mientras
FinFuncion
/////////////////////////////////////////////////////////////////////////// carta escogida texto
Funcion tucarta=tucartaF(aux)
	definir tucarta como texto;
	segun aux
		1: tucarta="as";
		2: tucarta="dos";
		3: tucarta="tres";
		4: tucarta="cuatro";
		5: tucarta="cinco";
		6: tucarta="seis";
		7: tucarta="siete";
		8: tucarta="ocho";
		9: tucarta="nueve";
		10: tucarta="diez";
		11: tucarta="jota";
		12: tucarta="reina";
		13: tucarta="rey";	
	FinSegun
FinFuncion
////////////////////////////////////////////////////////////////////////// apostar a una carta > o <
Funcion interbalo=mayorOmenor()
	definir interbalo como numero;
	escribir "¿quiere que el numero sea mayor o menor que el escogido? 1(mayor) 2(menor)";
	leer interbalo; 
	Mientras interbalo<>1 y interbalo<>2 Hacer
		Escribir "Opción incorrecta intentelo de nuevo";
		leer interbalo;
	Fin Mientras
FinFuncion
//////////////////////////////////////////////////////////////////////////salir o entrar del programa
Funcion salida=preguntarsalida()
	definir salida como numero;
	Escribir "¿quiere salir del programa? 1(si) o 2(no)";
	leer salida;
FinFuncion
///OOOOOOOOOOOOOOOOOOOOOOOOOOOO empieza el algoritmo OOOOOOOOOOOOOOOOOOOOOO definimos las variables
Algoritmo sin_titulo
	
	definir palo, carta , tucarta como texto;
	definir TiradaPalo , TiradaCarta , capital , dineroapuesta , interbaloapuesta , cartaescogida , salida como numero;
	definir puerta como logico;
	puerta=Verdadero;

	capital=500; //dinero del jugador
//////////////////////////////////////////////////////////////////////////////un bucle para cuando salgamos y entremos 	
	Escribir "bien venido al juegos de las cartas";
	Repetir
		Si capital>50 Entonces/////por si nos quedamos sin dinero
			TiradaPalo=azar(4)+1;///////////numero de palo azar
			TiradaCarta=azar(13)+1;/////////numero de carta azar
			////////////////////////////////////////////////////////////////////////////////
			palo=PaloAzar(TiradaPalo);//////palo azar escrito
			carta=cartaAzar(TiradaCarta);//carta azar escrita
			/////////////////////////////////////////////////////////////////////////////////
			dineroapuesta=realizarapuesta(capital);//dinero de la apuesta
			cartaescogida=escoger;//////////numero de carta que escogemmos en numero
			tucarta=tucartaF(cartaescogida);//// numero de carta que escogemos en texto
			interbaloapuesta=mayorOmenor;////interbalo de la apuesta mayor(1) o menor(2)
			Escribir "Ha salido la carta: " carta " de " palo;
			escribir "Has escogido la carta " tucarta;
			///aquie se comprueba la apuesta///////////////////////////////////////////////////////
			
			Si cartaescogida > tiradacarta  Entonces
				Si interbaloapuesta=1 Entonces 
					capital=capital-dineroapuesta;
					Escribir "Mala suerte has perdido ahora tiene " capital;
				sino
					capital=capital+dineroapuesta;
					Escribir "Has ganado enorabuena ahora tiene " capital;
				Fin Si
			Fin Si
			
			Si cartaescogida < tiradacarta  Entonces
				Si interbaloapuesta=2 Entonces
					capital=capital-dineroapuesta;
					Escribir "Mala suerte has perdido ahora tiene " capital;
				sino
					apital=capital+dineroapuesta;
					Escribir "Has ganado enorabuena ahora tiene " capital;
				Fin Si
			Fin Si
			
			//////////////////////////////////////////////////////////////////////////////////////
			Si capital>50 Entonces///////////para que no pregunte si queremos salir si nos quedamos sin dinero
				salida=preguntarsalida;//////salida del programa auz de puerta
			Fin Si
			Si salida=1 Entonces////cambiamos puerta gracias a salida
				puerta=falso;
			Fin Si
		SiNo
			puerta=falso;
			Escribir "Te has quedado sin dinero no puedes seguir jugando";
		Fin Si
	Hasta Que puerta=Falso
/////////////////////////////////////////////////////////////////////////////Se termina el programa
FinAlgoritmo

