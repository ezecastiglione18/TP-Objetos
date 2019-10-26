import calculadorDeDistancia.*

class Localidad
{
	var property nombre
	var property equipajeImprescindible
	var property precio
	const kilometro



	method esDestacado() = precio > 2000

	method aplicarDescuento(valor)
	{
		precio -= precio * valor / 100
		equipajeImprescindible.add("certificado de descuento")
	}

	method esPeligroso()
	{
		return equipajeImprescindible.any({equipaje => equipaje.contains("vacuna")})
	}

	method tieneDescuento()
	{
		return equipajeImprescindible.any({equipaje => equipaje.contains("certificado de descuento")})
	}

	method kilometro() = kilometro

	method distanciaA(otraLocalidad)
	{
		return calculadorDeDistancia.calcular(self,otraLocalidad)
	}
}


class Playa inherits Localidad{
	constructor(unNombre , equipaje , unPrecio , ubicacion) = super(unNombre , equipaje , unPrecio , ubicacion)
	
	override method esPeligroso() = false
}

class Montania inherits Localidad{
	var property puntoMasAlto
	
		constructor(unNombre , equipaje , unPrecio , ubicacion, unPunto) = super(unNombre , equipaje , unPrecio , ubicacion)
	{
		puntoMasAlto = unPunto
	}
	
	override method esPeligroso(){
		return (super() && puntoMasAlto > 5000)
	}
	
	override method esDestacado() = true
}

class CiudadHistorica inherits Localidad{
	
	var property museosDisponibles
	
	constructor(unNombre , equipaje , unPrecio , ubicacion, unosMuseos) = super(unNombre , equipaje , unPrecio , ubicacion)
	{
		museosDisponibles = unosMuseos
	}
	
	override method esPeligroso(){
		return equipajeImprescindible.any({equipaje => equipaje.contains("seguro de asistencia al viajero")})
	}
	
	override method esDestacado(){
		return (super() && museosDisponibles.size() > 2)
	}
}
