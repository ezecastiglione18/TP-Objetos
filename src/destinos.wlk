import empresa.*
import usuarios.*

object garlicSea 
{
	var property nombre = "garlics Sea"
	var property equipajeImprescindible = ["cana de pescar", "piloto"]
	var property precio = 2500
	
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
}

object silverSea 
{
	var property nombre = "silvers Sea"
	var property equipajeImprescindible = ["protector solar","equipo de buceo"]
	var property precio = 1350
	
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
}

object lastToninas
{
	var property nombre = "last Toninas"
	var property equipajeImprescindible = ["vacuna gripal","vacuna b","necronomicon"]
	var property precio = 3500
	
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
}

object goodAirs
{
	var property nombre = "good Airs"
	var property equipajeImprescindible = ["cerveza", "protector solar"]
	var property precio = 1500
	
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
}
