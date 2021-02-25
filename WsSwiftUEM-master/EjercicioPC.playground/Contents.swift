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

class Grafica{
    var memoria: String?
    var cores: String?
    var tdp : String?
    var velocidad: String?
    

}

class Equipo{
    var memoria = Ram()
    var procesador = Procesador()
    var almacenamiento = Almacenamiento()
    var grafica = Grafica()
    var price: Int = 0
    var nombre: String?


}
var equipo1 = Equipo()
equipo1.nombre = "Gaming Pro"
equipo1.price = 3000
equipo1.memoria.cantidadRam = "32GB"
equipo1.memoria.fabricante = "Corsair"
equipo1.memoria.rgb = "No"
equipo1.procesador.fabricanteProcesador = "Intel"
equipo1.procesador.nucleo = "16"
equipo1.procesador.hilos = 32
equipo1.procesador.velocidad = "4,8 mHz"
equipo1.almacenamiento.fabricanteDisco = "Barracuda"
equipo1.almacenamiento.tipo = "SDD"
equipo1.almacenamiento.capacidadDisco = 4
equipo1.grafica.cores = "8"
equipo1.grafica.memoria = "12 GB"
equipo1.grafica.tdp = "250W"
equipo1.grafica.velocidad = "1417 mHz"



print("Nombre del Equipo:",equipo1.nombre!,"Precio:", equipo1.price,"€,","Ram",equipo1.memoria.cantidadRam!,"Fabricante de memoria:", equipo1.memoria.fabricante!, "RGB", equipo1.memoria.rgb!, "Procesador", equipo1.procesador.fabricanteProcesador!, "Nucleo", equipo1.procesador.nucleo!,"Nucleos", equipo1.procesador.hilos,"Velocidad del Procesador", equipo1.procesador.velocidad!,"Marca Disco", equipo1.almacenamiento.fabricanteDisco!, "Tipo de disco",equipo1.almacenamiento.tipo!, "Capacidad de Disco",equipo1.almacenamiento.capacidadDisco, "TB", "Nucleos de la grafica",equipo1.grafica.cores, "Memoria de la grafica", equipo1.grafica.memoria, "Consumo de la grafica", equipo1.grafica.tdp,"Velocidad de la grafica", equipo1.grafica.velocidad)

dump(equipo1)
