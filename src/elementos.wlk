
class Hogar {
	var property nivelDeMugre
	var property confort
	
	method esBueno(){ return nivelDeMugre <= confort / 2}
	
	method ataqueDe(plaga){ nivelDeMugre = plaga.nivelDeDanio() }
}

class Huerta {
	var property capacidadProduccion
	var property nivelFijo 
	
	method esBueno(){ return capacidadProduccion > nivelFijo}	
	
	method ataqueDe(plaga){
		if (plaga.transmiteEnfermedades()) { capacidadProduccion = capacidadProduccion  - (plaga.nivelDeDanio() * 0.1) - 10  } 
		else {  capacidadProduccion = capacidadProduccion - plaga.nivelDeDanio() * 0.1  }
	}
}

class Mascota {
	
	var property nivelDeSalud
	
	method esBueno(){ return nivelDeSalud > 250}
	
	method ataqueDe(plaga){ if ( plaga.transmiteEnfermedades()) { nivelDeSalud = nivelDeSalud - plaga.nivelDeDanio()}}
}

