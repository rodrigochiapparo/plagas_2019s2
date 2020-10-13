class Barrios {
	var property elementos = []
	
	method esCopado(){ return elementos.filter({ ele => ele.esBueno()}).size() > elementos.filter({ ele => not ele.esBueno()}).size()}
	
}
