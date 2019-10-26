import usuarios.*

class MedioDeTransporte
{
	var property velocidad 
	var property kilometro
	
	constructor(unaVelocidad,unCosto)
	{
		velocidad = unaVelocidad
		kilometro = unCosto
	}
	
	method velocidad() = velocidad
	
	method cuantoTardoDesdeHasta(unaLocalidad,otraLocalidad)
	{
		return unaLocalidad.distanciaA(otraLocalidad)/velocidad
	}
	
	method loPuedeCostear(unUsuario){
		return unUsuario.limiteGastoEnVehiculo >= self.precioPorKilometro()
	}
}

class Tren inherits MedioDeTransporte{
	
	method precioPorKilometro(){
		return (2300/1.60934) // 1 milla = 1.60934 km segun Google :/
		//Esa cuenta la haces como regla de tres simple. 
	}
}

class Barco inherits MedioDeTransporte{
	var property probabilidadChoque
	
	constructor(unaVelocidad, unCosto, unaProb) = super(unaVelocidad, unCosto)
	{
		probabilidadChoque = unaProb
	}	
	
	method precioPorKilometro(){
		return 1000 * probabilidadChoque
	}
}

class Micro inherits MedioDeTransporte{
	
	method precioPorKilometro(){
		return 5000
	}
}

class Avion inherits MedioDeTransporte{
	
	var property turbinas
	
	constructor(unaVelocidad, unCosto, unasTurbinas) = super(unaVelocidad, unCosto)
	{
		turbinas = unasTurbinas
	}
	
	method precioPorKilometro(){
		return turbinas.sum({ turbina.nivelImpulso() })
	}
}

object turbina{
	var property nivelImpulso
}

