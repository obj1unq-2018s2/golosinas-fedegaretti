object mariano {

	var property golosinas = []

	method comprar(golosina) = golosinas.add(golosina)

	method desechar(golosina) = golosinas.remove(golosina)

	method probarGolosinas() = golosinas.forEach{ golosina => golosina.mordisco() }

	method hayGolosinaSinTACC() = golosinas.any{ golosina => golosina.libreGluten() }

	method preciosCuidados() = golosinas.all{ golosina => golosina.precio() <= 10 }

	method golosinaDeSabor(unSabor) = golosinas.find{ golosina => golosina.gusto() == unSabor }

	method golosinasDeSabor(unSabor) = golosinas.filter{ golosina => golosina.gusto() == unSabor }

	method sabores() = golosinas.map{ golosina => golosina.gusto() }.withoutDuplicates()

	method golosinaMasCara() = golosinas.max{ golosina => golosina.precio() }

	method pesoGolosinas() = golosinas.sum{ golosina => golosina.peso() }

	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(golosinas.asSet())

	method gustosFaltantes(gustosDeseados) = gustosDeseados.difference(self.sabores().asSet())

}

