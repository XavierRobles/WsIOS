import UIKit

class Ram {
    var cantidadRam: String?
    var fabricante: String?
    var rgb: String?
}
class Procesador{
    var velocidad: String?
    var nucleo: String?
    var fabricanteProcesador: String?
    var hilos : Int = 0
}
class Almacenamiento{
    var tipo: String?
    var fabricanteDisco: String?
    var capacidadDisco: Int = 0;
}

class Equipo{
    var memoria = Ram()
    var procesador = Procesador()
    var almacenamiento = Almacenamiento()
    var price: Int = 0
    var nombre: String?

}
var equipo1 = Equipo()
equipo1.nombre = "Gaming Pro"
equipo1.price = 3000
equipo1.memoria.cantidadRam = "8GB"
equipo1.memoria.fabricante = "Corsair"
equipo1.memoria.rgb = "No"
equipo1.procesador.fabricanteProcesador = "Intel"
equipo1.procesador.nucleo = "8"
equipo1.procesador.hilos = 4
equipo1.procesador.velocidad = "3,8 mHz"
equipo1.almacenamiento.fabricanteDisco = "Barracuda"
equipo1.almacenamiento.tipo = "SDD"
equipo1.almacenamiento.capacidadDisco = 4


print("Nombre del Equipo:",equipo1.nombre!,"Precio:", equipo1.price,"€,","Ram",equipo1.memoria.cantidadRam!,"Fabricante de memoria:", equipo1.memoria.fabricante!, "RGB", equipo1.memoria.rgb!, "Procesador", equipo1.procesador.fabricanteProcesador!, "Nucleo", equipo1.procesador.nucleo!,"Nucleos", equipo1.procesador.hilos,"Velocidad del Procesador", equipo1.procesador.velocidad!,"Marca Disco", equipo1.almacenamiento.fabricanteDisco!, "Tipo de disco",equipo1.almacenamiento.tipo!, "Capacidad de Disco",equipo1.almacenamiento.capacidadDisco, "TB" )

dump(equipo1)
