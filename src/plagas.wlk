class Cucaracha {
	
	var property poblacion 
	var property promedio 
	
	
	method transmiteEnfermedades() { return poblacion >= 10 and promedio >= 10}
	method nivelDeDanio() { return poblacion / 2}
	
	method ataqueElemento(){ poblacion = poblacion + poblacion * 0.1 ; promedio = promedio + 2}
	
}

class Pulgas {
	
	var property poblacion
	
	method transmiteEnfermedades(){ return poblacion >= 10}
	method nivelDeDanio(){ return poblacion * 2}
	
	method ataqueElemento(){  poblacion = poblacion + poblacion * 0.1}
}

class Garrapatas inherits Pulgas {
	
	override method ataqueElemento() {  poblacion = poblacion + poblacion * 0.2 }
}

class Mosquitos {
	
	var property poblacion
	
	method transmiteEnfermedades(){ return  poblacion % 3 == 0 }
	method nivelDeDanio(){ return poblacion}
	
	method ataqueElemento(){  poblacion = poblacion + poblacion * 0.1}
}