object bombon {

	var property peso = 15

	method precio() = 5

	method mordisco() {
		peso = peso * 0.8 - 1
	}

	method gusto() = "frutilla"

	method libreGluten() = true

}

object alfajor {

	/*  Vale 12 pesos y pesa inicialmente 300 gramos. Su gusto es chocolate. 
	 * 	No es libre de gluten. Cuando recibe un mordisco, pierde el 20 % de su peso (o sea,
	 * 	su nuevo peso se calcula como `peso * 0.8`).
	 */
	var property peso = 300

	method precio() = 12

	method gusto() = "chocolate"

	method libreGluten() = false

	method mordisco() {
		peso = peso * 0.8
	}

}

object caramelo {

	/*  Vale 1 peso y pesa inicialmente 5 gramos. Su gusto es frutilla. Es libre de gluten.   
	 Cuando recibe un mordisco, pierde 1 gramo. */
	var property peso = 5

	method precio() = 1

	method gusto() = "frutilla"

	method libreGluten() = true

	method mordisco() {
		peso -= 1
	}

}

object chupetin {

	/*	Vale 2 pesos y pesa inicialmente 7 gramos. Su gusto es naranja. 
	 * 	Es libre de gluten.  
	 * 	Cuando recibe un mordisco, pierde el 10 % de su peso, 
	 * 	a excepción de que su peso actual sea menor a 2 gramos: en tal caso, no */
	var property peso = 7

	method precio() = 2

	method gusto() = "naranja"

	method libreGluten() = true

	method mordisco() {
		if (peso < 2) {
			peso = peso * 0.9
		}
	}

}

object oblea {

	/*	Vale 5 pesos y pesa inicialmente 250 gramos. Su gusto es vainilla. 
	 * 	No es libre de gluten.  
	 * 	Al recibir un mordisco pierde peso, en una cantidad que depende del peso actual: 
	 * 	si es mayor a 70 gramos pierde el 50 % de su peso, en caso contrario, el 25 %. */
	var property peso = 250

	method precio() = 5

	method gusto() = "vainilla"

	method libreGluten() = false

	method mordisco() {
		if (peso > 70) {
			peso = peso * 0.5
		} else {
			peso = peso * 0.75
		}
	}

}

object chocolatin {

	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	/*  El peso inicial es desconocido, lo asigna el usuario. 
	 *  El precio es de $0,50 por cada gramo de peso inicial.No es libre de gluten.
	 *  Obviamente, su gusto es chocolate.   
	 * 	Pierde 2 gramos por mordisco.   
	 **¡Atención!** El precio es según el _peso inicial_, no debe cambiar con los mordiscos. */
	var property pesoInicial
	var property pesoActual

	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) {
		pesoInicial = cuanto
		pesoActual = cuanto
	}

	method precio() = pesoInicial * 0.50

	method gusto() = "chocolate"

	method libreGluten() = false

	method mordisco() {
		pesoActual -= 2
	}

}

object golosinaBaniada {

	/*	Se arma a partir de una _golosina de base_. <br>
	 * 	El peso inicial es el de la golosina de base más 4 gramos que es lo que pesa el bañado. 
	 * 	El precio es el de la golosina de base más 2 pesos. El gusto es el de la golosina de base. 
	 * 	De la misma manera, es libre de gluten si lo es su golosina base.   
	 * 	Con cada mordisco se da un mordisco a la golosina de base. Además, 
	 * 	en el primer mordisco pierde 2 gramos de bañado, y en el segundo los otros dos. */
	var golosinaInterior
	var pesoBanio = 4

	method baniaA(unaGolosina) {
		golosinaInterior = unaGolosina
	}

	method precio() = golosinaInterior.precio() + 2

	method peso() = golosinaInterior.peso() + 4

	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) {
			pesoBanio -= 2
		}
	// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}

	method gusto() = golosinaInterior.gusto()

	method libreGluten() = golosinaInterior.libreGluten()

}

object tuttifrutti {

/*	Pesa inicialmente 5 gramos. 
 * 	La pastilla puede ser libre de gluten o no (se configura). 
 * 	Si es libre de gluten el precio es $7; si no, es de $10.  
 * 	En cada mordisco cambia el sabor, pasa de frutilla a chocolate, de ahí a naranja, 
 de ahí vuelve a frutilla. */
// como manejar el cambio de sabor ??
	
	var property peso = 5
	
	var property libreGluten = false
	
	method precio() = if (libreGluten = false) 10 else 7
	
	

}

