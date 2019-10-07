import calculadorDeDistancia.*

class Localidad
{
	var property nombre
	var property equipajeImprescindible
	var property precio
	const kilometro

	constructor(unNombre , equipaje , unPrecio , ubicacion)
	{
		nombre = unNombre
		equipajeImprescindible = equipaje
		precio = unPrecio
		kilometro = ubicacion
	}

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
