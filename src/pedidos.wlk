import rodados.*
import dependencias.*

class Pedido{
	var property distancia
	var property tiempoMaximo
	var property pasajeros
	const property coloresIncompatibles=#{}
	method velocidadRequerida() { return self.distancia()/self.tiempoMaximo()}
	method puedeSatisfacer(auto) { 
		return 
			auto.velocidadMaxima()>=self.velocidadRequerida()+10
			and auto.capacidad()>=self.pasajeros()
			and coloresIncompatibles.all{color=>color!=auto.color()}
			//and not coloresIncompatibles.contains(auto.color())
	}
	method acelerar(){
		tiempoMaximo-=1
	}
	method relajar(){
		tiempoMaximo+=1
	}
	
}