import destinos.*

object barrileteCosmico{
	const nombre = "Barrilete cosmico"
	var destinos = [garlicSea, silverSea, lastToninas, goodAirs]
	
	method destinos(){
		return destinos
	}

	method destinosMasImportantes(){
		return destinos.filter( {destino => destino.esDestacado()} )
	}
	
	method cartaDeDestinos(){
		return destinos.map( {destino => destino.nombre()} )
	}
	
	method aplicarDescuento(descuento){
		destinos.forEach( {destino => destino.aplicarDto(descuento)} )
	}
	
	method esExtrema(empresa){
		
	}
	
}

	 

