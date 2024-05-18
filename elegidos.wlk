import cantantes.*
import jurado.*

object elegidos{
	
	const jurado = []
	const participantes = [] 
	
	method agregarJuez(unJuez){
		jurado.add(unJuez)
	}
	
	method agregarParticipante(unParticipante){
		participantes.add(unParticipante)
	}
	
	method ganador(){
		return participantes.max{participante => self.puntosTotales(participante)}
	}
	
	method puntosTotales(participante){
		return jurado.sum{integrante=>integrante.puntosPara(participante)}
	}
}
