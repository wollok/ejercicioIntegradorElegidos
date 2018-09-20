import jurado.*
import elegidos.*

class Cantante{ 
	
	var property bailaBien = true 
	var property afinado = true
	var edad
	var property cancion
	var sexo = 'F'
	var apariencia = []

	method usa(prenda){
		return apariencia.contains(prenda)
	}
	
	method vestirseCon(prenda){
		apariencia.add(prenda)
	}
	
	method esMujer() {
		return sexo == 'F'
	}
	method esJoven() {
		return edad <= 30
	}
	method esMayor() {
		return edad > 50
	}
	
	method genero() {
		return cancion.genero() 
	}
	method encajaApariencia() {
		return self.genero().encajaApariencia(self)
	}
	
}

class Cancion{
	
	var property autor
	var property genero

}

object folklore{

	method encajaApariencia(participante){
		return participante.usa("poncho") and 
			(participante.usa("alpargatas") or participante.usa("botas"))
	}
}

object tango{
	
	method encajaApariencia(participante){
		return participante.usa("sombrero") and 
			participante.afinado() and
			participante.esMayor() 
	}
}

object cumbia{

	method encajaApariencia(participante){
		return participante.bailaBien()
	}
}

object pop{
	
	method encajaApariencia(participante){
		return true
	}
}

