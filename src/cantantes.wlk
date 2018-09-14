import jurado.*
import elegidos.*

class Cantante{ 
	
	var bailaBien 
	var afinado 
	var edad 
	var sexo
	var cancion
	var apariencia = []

	constructor(_bailaBien, _afinado, _edad, _sexo, _cancion){
		bailaBien = _bailaBien
		afinado = _afinado
		edad = _edad
		sexo = _sexo
		cancion = _cancion
	}	
	
	method usa(prenda){
		return apariencia.contains(prenda)
	}
	
	method vestirseCon(prenda){
		apariencia.add(prenda)
	}
	
	method bailaBien(){
		return bailaBien
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
	method afinado() {
		return afinado
	}
	method genero() {
		return cancion.genero() 
	}
	method encajaApariencia() {
		return self.genero().encajaApariencia(self)
	}
	
}

class Cancion{
	
	var autor
	var genero
	
	constructor(unAutor, unGenero){
		autor = unAutor
		genero = unGenero
	}
	
	method genero(){
		return genero
	}
	

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

