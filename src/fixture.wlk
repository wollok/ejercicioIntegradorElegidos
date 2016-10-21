import cantantes.*
import elegidos.*
import jurado.*

object fixture {

	method crearChicaJovenPop(){
		return new Cantante(false, false, 25, 'F', new Cancion("pop corn",pop))
	}

	method crearViejoTanguero(){
		return new Cantante(true, true, 70, 'M', new Cancion("tango tranquilo", tango))
	}
	method conformarJurado() {
		const votante1 = new Baboso() 
		const votante2 = new Tradicional() 
		const votante3 = new PublicoIdentificado(new Tecnico())
		elegidos.agregarJuez(votante1) 
		elegidos.agregarJuez(votante2) 
		elegidos.agregarJuez(votante3) 	
	}

}

