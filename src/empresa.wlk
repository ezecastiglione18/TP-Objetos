import destinos.*

object barrileteCosmico
{
// 	const nombre = "Barrilete cosmico"
	var property destinos = [garlicSea, silverSea, lastToninas, goodAirs]

// con propert no hace falta getters y setters es un chiche de wollok estaba bien	
//	method destinos()
//	{
//		return destinos
//	}

	method destinosMasImportantes()
	{
		return destinos.filter( {destino => destino.esDestacado()} )
	}
	
	method cartaDeDestinos()
	{
		return destinos.map( {destino => destino.nombre()} )
	}
	
	method aplicarDescuento(descuento)
	{
		destinos.forEach( {destino => destino.aplicarDescuento(descuento)} )
	}
	
	method esExtrema()
	{
		return destinos.any({destino => destino.esPeligroso()})
	}
	
	method destinosPeligrosos()
	{
		return destinos.filter({destino => destino.esPeligroso()})
	}

}

	 

