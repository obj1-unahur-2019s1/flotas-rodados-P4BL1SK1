import rodados.*
class Dependencia{
	var flota=[]
	var property empleados
	method agregarAFlota(rodado) {flota.add(rodado)}
	method sacarDeFlota(rodado) {flota.remove(rodado)}
	method pesoTotalFlota() {return flota.sum{coche=>coche.peso()}}
	method estaBienEquipada() {return flota.size()>=3 && flota.all{coche=>coche.velocidadMaxima()>=100}}
	method capacidadTotal(){return flota.sum{coche=>coche.capacidad()}}
	method capacidadTotalEnColor(color) {return flota.filter{coche=>coche.color()==color}.sum{coche=>coche.capacidad()}}
	method colorDelRodadoMasRapido() {return flota.max{coche=>coche.velocidadMaxima()}.color()}
	method capacidadFaltante(){return empleados-self.capacidadTotal()}
	method esGrande(){return empleados>=40 && flota.size()>=5}
}
