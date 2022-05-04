object estampilla {
	var indiceValoracion = 10
	var antiguedad = 100
	
	method valor() = indiceValoracion *antiguedad
	
	method quemarse() {indiceValoracion = 0}
	
}

object olla {
	
	method valor() = 200
	
	method quemarse() {}
	
}

object collar {
	
	method valor() = 100000
	
	method quemarse() {}
	
}

object memoria {
	var property capacidad = 4
	
	method valor() = 100 * capacidad
	
	method alterar(porcentaje) {capacidad *= porcentaje/100 }
	
	method quemarse() {capacidad *= 0.01}
	
}

object libro {
	var property valor = 300
	
	method quemarse() {valor = 0}
	
}
