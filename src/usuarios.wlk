import localidades.*
import empresa.*
import mediosDeTransporte.*

class User
{
	var nomreDeUsuario
	var localidadDeOrigen
	var viajes
	var property cuenta 
	var siguiendo
	
	constructor(nombre,origen,viajesRealizados,dinero,genteQueSigue)
	{
		nomreDeUsuario = nombre
		localidadDeOrigen = origen
		viajes = viajesRealizados
		cuenta = dinero
		siguiendo = genteQueSigue
	}
	
	// getter y setter de la localidad
	method localidadDeOrigen(otraLocalidad)
	{
		localidadDeOrigen = otraLocalidad
	}
	method localidadDeOrigen() = localidadDeOrigen 

	method kilometros()
	{
		return viajes.sum({unViaje => unViaje.distanciaARecorrer()})
	}
	
	method seguirUsuario(user)
	{
		if(not siguiendo.contains(user))
		{
			siguiendo.add(user)
			user.seguirUsuario(self)
		}
	}
	
	method planearUnViajeA(unDestino,unaEmpresa, unTransporte)
	{
		return unaEmpresa.armarViaje(self,unDestino, unTransporte)
	}
	
	method costoDelViaje(unDestino,unaEmpresa, unTransporte)
	{
		return self.planearUnViajeA(unDestino,unaEmpresa, unTransporte).precio()
	}
	
	method puedeCostear(unDestino,unaEmpresa, unTransporte)
	{
		return cuenta - self.costoDelViaje(unDestino,unaEmpresa, unTransporte)>= 0	
	}
	
	/* VER EL METODO PARA CADA UNO DE LOS TIPOS DE USUARIOS DISTINTOS  method hacerUnViajeA(unDestino,unaEmpresa)
	{
		if (self.puedeCostear(unDestino,unaEmpresa)
		{
			self.agregarViaje(unDestino,unaEmpresa)
		}
	}*/
	
	method agregarViaje(unDestino,unaEmpresa, unTransporte)
	{
		viajes.add(self.planearUnViajeA(unDestino,unaEmpresa, unTransporte))
	}
}

class Empresarial inherits User{
	method vehiculoFavorito(unaEmpresa)
	{
		return unaEmpresa.transportesDisponibles().max({ vehiculo =>  vehiculo.velocidad()})
	}
	
	override method hacerUnViajeA(unDestino, unaEmpresa)
	{
		if (self.puedeCostear(unDestino, unaEmpresa, self.vehiculoFavorito(unaEmpresa))
			{
				self.agregarViaje(unDestino,unaEmpresa, self.vehiculoFavorito(unaEmpresa))
			}
		)
	}
}

class Estudiantil inherits User{	
	var property limiteGastoEnVehiculo 
	
	constructor(nombre,origen,viajesRealizados,dinero,genteQueSigue, unLimite) = super(nombre,origen,viajesRealizados,dinero,genteQueSigue)
	{
		limiteGastoEnVehiculo = unLimite	
	}
	
	method vehiculoFavorito(unaEmpresa)
	{
		return self.vehiculosQuePuedeCostear(unaEmpresa).max({vehiculo => vehiculo.velocidad()})
	}
	
	method vehiculosQuePuedeCostear(empresa)
	{
		return  empresa.transportesDisponibles().filter({ vehiculo => vehiculo.loPuedeCostear(self) })
	}
	
	override method hacerUnViajeA(unDestino, unaEmpresa)
	{
		if (self.puedeCostear(unDestino, unaEmpresa, self.vehiculoFavorito(unaEmpresa))
			{
				self.agregarViaje(unDestino,unaEmpresa, self.vehiculoFavorito(unaEmpresa))
			}
		)
	}
}

class Familiar inherits User{
	method vehiculoFavorito(unaEmpresa)
	{
		return unaEmpresa.transportesDisponibles().anyOne()
	}
	
	override method hacerUnViajeA(unDestino, unaEmpresa)
	{
		if (self.puedeCostear(unDestino, unaEmpresa, self.vehiculoFavorito(unaEmpresa))
			{
				self.agregarViaje(unDestino,unaEmpresa, self.vehiculoFavorito(unaEmpresa))
			}
		)
	}
}

	