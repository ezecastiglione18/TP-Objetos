import destinos.*
import empresa.*

object pabloHari
{
	var property usuario = "PHari"
	var property historial = #{lastToninas,goodAirs}
	var property cuenta = 1500
	var property siguiendo = #{} // el anterior era un mal nombre
//	var property seguidores = #{} // el anterior era un mal nombre
	
	method puedeViajar(destino)
	{
		return cuenta - destino.precio() >= 0	
	}
	
	method volarHacia(destino)
	{
		if (self.puedeViajar(destino))
		{
			historial.add(destino)
			cuenta -= destino.precio()
		}	
	}
	
	method kilometros()
	{
		return historial.sum({destino => destino.precio()}) * 0.1
	}
	
	
	method seguirUsuario(user)
	{
		if(not siguiendo.contains(user))
		{
			siguiendo.add(user)
			user.seguirUsuario(self)
		}
	}
	
}
