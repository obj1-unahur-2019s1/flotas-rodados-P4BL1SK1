class Corsa {
	var property color
	method capacidad() {return 4}
	method velocidadMaxima() {return 150}
	method peso() {return 1300}
}

class RenaultKwid{
	var tanqueAdicional=false
	const property color="azul"
	method capacidad() {
		if(not tanqueAdicional){return 3}
		else{return 4}
	}
	method velocidadMaxima() {
		if(not tanqueAdicional){return 120}
		else{return 110}
	}
	method peso(){
		if(not tanqueAdicional){return 1300}
		else{return 1200}
	}
}	

object trafic{
	const property color="Blanco"
	var property motor
	var property interior
	method capacidad(){return interior.capacidad()}
	method velocidadMaxima(){return motor.velocidadMaxima()}
	method peso(){return motor.peso()+interior.peso()+4000 }
}
object comodo{
	method capacidad(){return 5}
	method peso(){return 700}
}
object popular{
	method capacidad(){return 12}
	method peso(){return 1000}
}

object pulenta{
	method peso(){return 800}
	method velocidadMaxima(){return 130}
}
object bataton{
	method peso(){return 500}
	method velocidadMaxima(){return 80}
}
