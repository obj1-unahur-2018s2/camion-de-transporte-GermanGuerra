object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
	
}

object paquete_de_ladrillos {
	var peso_total = 2*cantidad
	var cantidad = null
	method set_cigarrillos (numero) {cantidad=numero}
	method peso() { return peso_total}
	method nivelPeligrosidad() { return 2 }
}

object arena_de_granel {
	var total = null
	method set_arena (numero) = {total=numero}
	method peso() { return total }
	method nivelPeligrosidad() { return 1 }
}

object bateria_Antiaerea {
	var peso_total = null
	var armada = null
	method armar() {armada = true}
	method desarmar() {armada = false}
	method peso() { return if (armada) {300} else {200} }
	method nivelPeligrosidad() { return if (armada) {100} else {0}}
}

object contenedor_Portuario {
	const property objeto_contenido = []
	var sumatotal = null
	var max_peligro = null
	method contener(objeto) {
		objeto_contenido.add(objeto)
		sumatotal=objeto_contenido.peso()
		max_peligro=objeto_contenido.nivelPeligrosidad()
	}
	method peso() { return 100+sumatotal }
	method nivelPeligrosidad() { return max_peligro}
}

object residuos_radioactivos {
	var peso_total = null
	method set_desechos (numero) {peso_total=numero}
	method peso() { return peso_total }
	method nivelPeligrosidad() { return 200 }
}

object embalaje_de_seguridad {
	var objeto_embalado = null
	method embalar(objeto) {objeto_embalado = objeto}
	method peso() { return objeto_embalado.peso() }
	method nivelPeligrosidad() { return objeto_embalado.nivelPeligrosidad()/2 }}