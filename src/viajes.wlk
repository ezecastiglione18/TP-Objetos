class Viaje
{
	var localidadDeOrigen 
	var localidadDeDestino
	var medioDeTransporte
	
	constructor(origen,destino,transporte)
	{
		localidadDeOrigen = origen
		localidadDeDestino = destino
		medioDeTransporte = transporte
	}
	
	method precio()
	{
		return localidadDeDestino.precio() + (medioDeTransporte.precioPorKilometro() * self.distanciaARecorrer())
	}
	
	method distanciaARecorrer() = localidadDeOrigen.distanciaA(localidadDeDestino)
}