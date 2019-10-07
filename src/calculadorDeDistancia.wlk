object calculadorDeDistancia
{
	method calcular(localidadDeOrigen,localidadDeDestino)
	{
		var distancia = localidadDeOrigen.kilometro()-localidadDeDestino.kilometro()
		return distancia.abs()
	}
}