import localidades.*
import usuarios.*
import mediosDeTransporte.*
import viajes.*


class EmpresaDeViajes
{
	var localidades 
	var transportesDisponibles 

	constructor(unaLocalidad,unTransporte)
	{
		localidades = unaLocalidad
		transportesDisponibles = unTransporte
	}
	
	method localidadesMasImportantes()
	{
		return localidades.filter( {unaLocalidad => unaLocalidad.esDestacado()} )
	}
	
	method cartaDeDestinos()
	{
		return localidades.map( {localidad => localidad.nombre()} )
	}
	
	method aplicarDescuento(descuento)
	{
		localidades.forEach( {localidad => localidad.aplicarDescuento(descuento)} )
	}
	
	method esExtrema()
	{
		return self.localidadesMasImportantes().any({localidad => localidad.esPeligroso()})
	}
	
	method destinosPeligrosos()
	{
		return localidades.filter({localidad => localidad.esPeligroso()})
	}
	
	method preciosDeLosDestinos()
	{
		return localidades.map({localidad => localidad.precio()})
	}
	method armarViaje(unUsuario,unDestino, unTransporte)
	{
		return new Viaje(unUsuario.localidadDeOrigen(),unDestino, unTransporte)
		
	}
}

	 

