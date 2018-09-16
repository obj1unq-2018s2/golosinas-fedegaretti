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

	var property peso = 300

	method precio() = 12

	method gusto() = "chocolate"

	method libreGluten() = false

	method mordisco() {
		peso = peso * 0.8
	}

}

object caramelo {

	var property peso = 5

	method precio() = 1

	method gusto() = "frutilla"

	method libreGluten() = true

	method mordisco() {
		peso -= 1
	}

}

object chupetin {

	var property peso = 7

	method precio() = 2

	method gusto() = "naranja"

	method libreGluten() = true

	method mordisco() {
		if (peso > 2) {
			peso = peso * 0.9
		}
	}

}

object oblea {

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
	
	var property pesoInicial
	var property peso

	method pesoInicial(cuanto) {
		pesoInicial = cuanto
		peso = cuanto
	}

	method precio() = pesoInicial * 0.50

	method gusto() = "chocolate"

	method libreGluten() = false

	method mordisco() {
		peso -= 2
	}

}

object golosinaBaniada {

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
	}

	method gusto() = golosinaInterior.gusto()

	method libreGluten() = golosinaInterior.libreGluten()

}

object tuttifrutti {

	var property peso = 5
	var property libreGluten = false
	const property sabores = [ "frutilla", "chocolate", "naranja" ]
	var property gusto = sabores.first()
	var cantMordiscos = 0

	method precio() = if (libreGluten) 7 else 10

	method mordisco() {
		cantMordiscos = if (cantMordiscos >= sabores.size() - 1) 0 else cantMordiscos + 1
		gusto = sabores.get(cantMordiscos)
	}

}

