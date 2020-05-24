import trafic.*
import otrosRodados.*

class Dependencia {
	const flota = []
	var cantidadEmpleados= 0
	
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	method agregarAFlotaVarios(listaRodados){
		flota.addAll(listaRodados)
	}
	method quitarDeFlota(rodado){
		flota.remove(rodado)
	}
	method contratarEmpleados(cantidad){
		cantidadEmpleados += cantidad
	}
	method rajarEmpleados(cantidad){
		cantidadEmpleados -= cantidad
	}
	method cantidadEmpleados(){
		return(cantidadEmpleados)
	}
	method pesoTotalFlota(){
		return(flota.sum({cosas => cosas.peso()}))
	}
	method estaBienEquipada(){
		/*
		 * es verdadero si la flota tiene al menos 3 
		 * rodados, y además, todos los rodados 
		 * de la flota pueden ir al menos a 100 km/h.
		 */
		  return(flota.size() >= 3 and flota.all({cosas => cosas.velocidadMax() >= 100}))
	}
	method capacidadTotalEnColor(color){
		/*  
		 * la cantidad total de personas que puede transportar la flota 
		 * afectada a la dependencia, considerando solamente los rodados 
		 * del color indicado.
		 */
		 return(flota.filter({cosas => cosas.color()==color}).sum({cosas => cosas.capacidad()}))
	}
	method colorDelRodadoMasRapido(){
		return(flota.max({cosas => cosas.velocidadMax()}).color())
	}
	method capacidadFaltante(){
		/*
		 * que es el resultado de restar, de la cantidad de empleados, 
		 * la capacidad sumada de los vehículos de la flota.
		 */
		 return (cantidadEmpleados - self.capacidadTotalDeLaFlota())
		 
	}
	method esGrande(){
		/*
		 * la condición es que la dependencia tenga 
		 * al menos 40 empleados y 5 rodados.
		 */
		 return(cantidadEmpleados >= 40 and flota.size() >= 5)
	}
	method capacidadTotalDeLaFlota(){
		return(flota.sum({cosas => cosas.capacidad()}))
	}

}





