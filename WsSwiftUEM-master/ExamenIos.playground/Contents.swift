import UIKit

//var str = "Hello, playground"
//
//
//var meses: [String: String] = ["Enero": "31", "Febrero": "28", "Marzo": "31", "Abril": "30", "Mayo": "31", "Junio": "30", "Julio": "31", "Agosto": "31", "Septiembre": "30", "Octubre": "31", "Noviembre": "30", "Diciembre": "31"]
//
//
//
//var cadena : String! = "Mayo"
//print(meses[cadena])


func Ejercicio2(array: [String]) -> (numeroString: Int, cadenaLarga: String) {
    var numeroString = array.count
    var cadenaLarga = array[0]
    for value in array[0..<array.count] {
        value.count
    }
     print(numeroString)
    return (numeroString, cadenaLarga)
}
Ejercicio2(array: ["Hola", "Que tal", "Mas Larga"])

//print("El numero de caracteres de la palabra \(cadena3) es \(cadena3.count)")




//almacena variables siempre con (clave: valor)
var diccio: [Int : Double] = [1: 35 , 2: 40 , 3: 50]
var meter = [Int]()
var meter2 = [Double]()

for (id, valor) in diccio {
    meter.append(id)
    meter2.append(valor)
    print("\(id): \(valor)")
}
print(meter)
print(meter2)

