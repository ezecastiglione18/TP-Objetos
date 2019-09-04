import destinos.*

object phari{
	const nombre= "Pablo Hari"
	var destinosVisitados = #{lastToninas,goodAirs}
	var saldoRestante = 1500
	var listaSeguidos = #{}
	var listaSeguidores = #{}
	
	method volarDestino(destino){
		if (saldoRestante >= destino.precio() && !destinosVisitados.contains(destino))
		{
			destinosVisitados.add(destino)			
			saldoRestante -= destino.precio()
		}
	}
	
	method listaSeguidos(){
		return listaSeguidos
	}
	
	method destinosVisitados(){
		return destinosVisitados
	}
	
	method obtenerKM(usuario){
		return 0.1 * (usuario.destinosVisitados().sum( {destino => destino.precio()} ))
	}
	
	/*method empezarASeguir(usuario){
		seguir(self, usuario)
		seguir(usuario, self)
	}
	
	method seguir(unUsuario, otroUsuario){
		if (! unUsuario.listaSeguidos().contains(otroUsuario))
		{
			unUsuario.listaSeguidos().add(otroUsuario)
			otroUsuario.listaSeguidos().add(unUsuario)
		}
	}*/
}