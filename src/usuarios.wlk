import destinos.*

object pabloHari
{
	var property usuario = "PHari"
	var historial = #{lastToninas,goodAirs}
	var cuenta = 1500
	var listaSeguidos = #{}
	var listaSeguidores = #{}
	
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
	
}