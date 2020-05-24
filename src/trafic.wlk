object trafic {
	/* 
	 * En esta parte del ejercicio podria haber usado una variable para tipo de motor 
	 * y otra para el interior. Luego hacer un if dependiendo de cual haya elegido
	 * pero me gusto mas esta forma con un conjunto, el tema es que se podrian
	 * meter todos los motores y todos los interiores. No seria logico pero bueno 
	 * es un punto de falla.
	 */
	const equipamiento = #{}
	method color(){return 'blanco'}
	method capacidad(){
		return(equipamiento.find({cosas => not(cosas.esMotor())}).capacidad())
	}
	method velocidadMax(){
		return(equipamiento.find({cosas => cosas.esMotor()}).velocidadMax())
	}
	method peso(){
		return(4000 + equipamiento.sum({cosas => cosas.peso()}))
		
	}
	method equipar(tipo){
		equipamiento.add(tipo)
	}

	method quitar(tipo){
		equipamiento.remove(tipo)
	}
}


object motorPulenta{
	method peso(){return 800}
	method velocidadMax(){return 130}
	method esMotor(){return true}
}

object motorBatata{
	method peso(){return 500}
	method velocidadMax(){return 80}
	method esMotor(){return true}
}

object interiorComodo{
	method capacidad(){return 5}
	method peso(){return 700}
	method esMotor(){return false}
}

object interiorPopular{
	method capacidad(){return 12}
	method peso(){return 1000}
	method esMotor(){return false}
}



