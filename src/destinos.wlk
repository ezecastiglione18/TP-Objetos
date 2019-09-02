/** First Wollok example */

object garlicSea {
	const nombre = "Garlic Sea"
	var equipaje = ["Cania de pescar","Piloto"]
	var precio = 2500
	
	method nombre(){
		return nombre
	}
	
	method precio(){
		return precio
	}
	
	method equipaje(){
		return equipaje
	}
	
	method esDestacado(){
		return precio > 2000
	}
	
	method efectuarDto(descuento){
		precio = ((100 - descuento) * 100) / precio
	}
}

object silverSea {
	const nombre = "Silver Sea"
	var equipaje = ["Protector Solar","Equipo de buceo"]
	var precio = 1350
	
	method nombre(){
		return nombre
	}
	
	method precio(){
		return precio
	}
	
	method equipaje(){
		return equipaje
	}
	
	method esDestacado(){
		return precio > 2000
	}
	
	
	method efectuarDto(descuento){
		precio = ((100 - descuento) * 100) / precio
	}
}

object lastToninas {
	const nombre = "Last Toninas"
	var equipaje = ["Vacuna gripal","Vacuna B", "Necronomicon"]
	var precio = 3500
	
	method nombre(){
		return nombre
	}
	
	method precio(){
		return precio
	}
	
	method equipaje(){
		return equipaje
	}
	
	method esDestacado(){
		return precio > 2000
	}
	
	
	method efectuarDto(descuento){
		precio = ((100 - descuento) * 100) / precio
	}
}

object goodAirs {
	const nombre = "Good Airs"
	var equipaje = ["Cerveza","Protector Solar"]
	var precio = 1500
	
	method nombre(){
		return nombre
	}
	
	method precio(){
		return precio
	}
	
	method equipaje(){
		return equipaje
	}
	
	method esDestacado(){
		return precio > 2000
	}
	
	method efectuarDto(descuento){
		precio = ((100 - descuento) * 100) / precio
	}
}