import elementos.*

object pedro {
	const coleccion = [estampilla, olla, collar, memoria, libro]

	method encontrarElemento(elemento) {
		coleccion.add(elemento)
	}
	
	method robarColeccion() {
		coleccion.clear()
	}
	
	method cantidadElementos() {
		coleccion.size()
	}
	
	method coleccionVacia() {
		coleccion.isEmpty()
	}
	
	method mejoraColeccion(elemento) = elemento.valor() > coleccion.last().valor()
	method elementoMayorA500(){
		return coleccion.filter({c=>c.valor()>500})
	}
	method cotizacionTotal(){
		coleccion.sum({c=>c.valor()})
	}
	method seQuemaTodosLosElementos(){
		coleccion.forEach({c=>c.quemarse()})
		coleccion.removeAll(self.filtrarQuemados())
	}
	method filtrarQuemados(){
		return coleccion.filter({c=>c.valor()==0})
	}
	method seQuemaElUltimoElemento(){
		const aux = coleccion.last()
		aux.quemar()
		if(aux.valor()==0){coleccion.remove(aux)}
	}

}