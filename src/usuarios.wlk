import localidades.*
import empresa.*

class User
{
	var nomreDeUsuario
	var localidadDeOrigen
	var viajes
	var cuenta 
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

	method planearUnViajeA(unDestino,unaEmpresa)
	{
		return unaEmpresa.armarViaje(self,unDestino)
	}
	
	method costoDelViaje(destino,empresa)
	{
		return self.planearUnViajeA(destino,empresa).precio()
	}
	method puedeCostear(destino,empresa)
	{
		return cuenta - self.costoDelViaje(destino,empresa)>= 0	
	}
	
	method hacerUnViajeA(unaLocalidad,unaEmpresa)
	{
		if (self.puedeCostear(unaLocalidad, unaEmpresa))
		{
			self.agregarViaje(unaLocalidad, unaEmpresa)
			cuenta -= self.costoDelViaje(unaLocalidad, unaEmpresa)
		}
	}
	method agregarViaje(unaLocalidad,unaEmpresa)
	{
		viajes.add(self.planearUnViajeA(unaLocalidad,unaEmpresa))
	}
	
}

	