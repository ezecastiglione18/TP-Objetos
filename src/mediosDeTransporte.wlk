class MedioDeTransporte
{
	var velocidad 
	var precioPorKilometro
	
	constructor(unaVelocidad,unCosto)
	{
		velocidad = unaVelocidad
		precioPorKilometro = unCosto
	}
	
	method precioPorKilometro() = precioPorKilometro
	method velocidad() = velocidad
	
	method cuantoTardoDesdeHasta(unaLocalidad,otraLocalidad)
	{
		return unaLocalidad.distanciaA(otraLocalidad)/velocidad
	}
}

