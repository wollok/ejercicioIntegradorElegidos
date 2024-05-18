import jurado.*
import elegidos.*

class Cantante {
	var property bailaBien = true
	var property afinado = true
	const edad
	var property cancion
	const sexo = "F"
	const apariencia = []
	
	method usa(prenda) = apariencia.contains(prenda)
	
	method vestirseCon(prenda) {
		apariencia.add(prenda)
	}
	
	method esMujer() = sexo == "F"
	
	method esJoven() = edad <= 30
	
	method esMayor() = edad > 50
	
	method genero() = cancion.genero()
	
	method encajaApariencia() = self.genero().encajaApariencia(self)
}

class Cancion {
	var property autor
	var property genero
}

object folklore {
	method encajaApariencia(participante) = participante.usa(
		"poncho"
	) and (participante.usa("alpargatas") or participante.usa("botas"))
}

object tango {
	method encajaApariencia(participante) = (participante.usa(
		"sombrero"
	) and participante.afinado()) and participante.esMayor()
}

object cumbia {
	method encajaApariencia(participante) = participante.bailaBien()
}

object pop {
	method encajaApariencia(participante) = true
}