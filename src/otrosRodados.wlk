
class ChevroletCorsa {
	var colorVehiculo
	method capacidad(){return 4}
	method velocidadMax(){return 150}
	method peso(){return 1300}
	method definirColor(color){colorVehiculo = color}
	method color(){return colorVehiculo}
}

class RenaultKwid {
	var tanqueAdicional =false
	method capacidad(){return if(tanqueAdicional){3}else{4}}
	method velocidadMax(){return if(tanqueAdicional){110}else{120}}
	method peso(){const peso = 1200 return if(tanqueAdicional){peso + 150}else{peso}}
	method color(){return 'azul'}
	method agregarTanque(){tanqueAdicional = true}
	method quitarTanque(){tanqueAdicional = false}
	}
	
	
class SuperSpecial {
	var capacidad = 0
	var velocidadMax = 0
	var peso = 0
	var color
	 
	 method definirCapacidad(unaCapacidad){capacidad = unaCapacidad}
	 method definirVelocidadMax(unaVelocidad){velocidadMax = unaVelocidad}
	 method definirPeso(unPeso){peso = unPeso}
	 method definirColor(uncolor){color = uncolor}
	
	method capacidad(){return capacidad}
	method velocidadMax(){return velocidadMax}
	method peso(){return peso}
	method color(){return color}
}
	


