class Deposito {
	var property bicicletas = []
	
	method bicisRapidas() = bicicletas.filter({ b=> b.velocidadDeCrucero() > 25 })
	method marcas() = bicicletas.map({ b => b.marca() }).asSet()
	method esNocturno() = bicicletas.all({ b => b.tieneLuz() })
	method puedeLlevarCarga(kg) = bicicletas.any({ b => b.carga() > kg })
	method marcaBiciMasRapida() = bicicletas.max({ b => b.velocidadDeCrucero() }).marca()
	method bicisLargas() = bicicletas.filter({ b => b.largo() > 170 })
	method cargaBicisLargas() = self.bicisLargas().sum({ b => b.carga() })
	method cantidadBicisSinAccesorios() = bicicletas.count({ b => b.accesorios().isEmpty() })
	method bicisCompanieras(bici) = bicicletas.filter({ b => b.esCompaniera(bici)})
}
