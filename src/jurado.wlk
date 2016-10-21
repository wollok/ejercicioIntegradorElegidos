import cantantes.*

class Votante {
	
	method puntosPara(participante){
		return if(self.leGusta(participante)) self.puntosPositivos() else self.puntosNegativos()
	}
	
	method leGusta(participante)
	
	method puntosPositivos()

	method puntosNegativos() {
		return -self.puntosPositivos()/2
	}
}

class Juez inherits Votante{

	override method puntosPositivos(){
		return 10
	}
}

class Baboso inherits Juez {
	
	override method leGusta(participante){
		return participante.esJoven() and participante.esMujer()
	}
}


class Tradicional inherits Juez{
	
	override method leGusta(participante){
		return argentina.esGeneroPropio(participante.genero())
	}
}


class Tecnico inherits Juez{
	
	override method leGusta(participante){
		return participante.encajaApariencia()
	}
}



class Publico inherits Votante {
	
	override method puntosPositivos(){
		return 2
	}
	
	override method leGusta(participante){
		return true
	}
}

class PublicoIdentificado inherits Publico{
	var juez
	
	constructor(unJuez){
		juez = unJuez
	}
	
	override method leGusta(participante){
		return juez.leGusta(participante)
	}
	
}

object argentina {

	var generos = [tango, folklore]
	
	method esGeneroPropio(genero){
		return generos.contains(genero)
	}
}