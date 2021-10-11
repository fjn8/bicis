class Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

class Canasto {
	var property volumen
	
	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false
}

class MorralDeBici {
	var property largo
	var property tieneOjoDeGato
	
	method peso() = 1.2
	method carga() = largo / 3
	method esLuminoso() = tieneOjoDeGato 
}

/*
Para agregar nuevos accesorios simplemente se deben generar las clases en base al accesorio que se desea modelar.
Hay que tener en cuenta que estas clases que se agreguen deben entender los mensajes que ya entienden las otras clases
para cumplir con el polimorfismo.
*/