import UIKit

//Ej1. Calcular el per\'ed\'admetro y \'e1rea de un rect\'e1ngulo dada su base y su altura.\

var lado = 10
var altura = 15
var perimetro = (lado * 2) + (altura * 2)
var area = lado * altura
print("Perimetro",perimetro ,"Area", area)

//Ej2. Dados los catetos de un tri\'e1ngulo rect\'e1ngulo, calcular su hipotenusa. funcion sqrt()\
        //Nota: en online no funciona\ hay que importar UIKit
var cateto = 10.0
var cateto2 = 5.0
var hipotenusa = sqrt((cateto * cateto) + (cateto2 * cateto2))
print("hipotenusa",hipotenusa)


//Ej3. Dados dos n\'fameros, mostrar la suma, resta, divisi\'f3n y multiplicaci\'f3n de ambos.\

var num1 = 10
var num2 = 5
var suma = num1 + num2
var resta = num1 - num2
var multi = num1 * num2
var divi = num1 / num2
print("Suma",suma,",Resta",resta,",multiplicacion",multi,",Division",divi)
//Ej4. Escribir un programa que convierta un valor dado en grados Fahrenheit a grados \
//       Celsius.\
var fahren = 80.0
var celsius = (fahren - 32) * 5 / 9
print("Fahrenheit" , fahren , "En Celsius",celsius)


//Ej5. Calcular la media de tres n\'fameros pedidos por teclado\
var nume1 = 5
var nume2 = 10
var nume3 = 40
var avg = (5 + 10 + 40) / (3)
print("Media de ", nume1 , nume2 , nume3, "es ", avg)

//Ej6. Un vendedor recibe un sueldo base mas un 10% extra por comision de sus ventas, \
//    el vendedor desea saber cuanto dinero obtendr\'e1 por concepto de comisiones por \
//    las tres ventas que realiza en el mes y el total que recibir\'e1 en el mes tomando \
//    en cuenta su sueldo base y comisiones.\

var sueldo = 1000
var venta1 = 250
var venta2 = 400
var venta3 = 750
var total = 1000 + (venta1 + venta2 + venta3) * 10 / 100
print("Sueldo total de su salario de:", sueldo , " mas las ventas: ", venta1, venta2, venta3 , " aplicando el 10% es del total: ", total)


//Ej7. Un alumno desea saber cual ser\'e1 su calificaci\'f3n final en la materia de IOS\
//    Dicha calificaci\'f3n se compone de los siguientes porcentajes:\
//    * 55% del promedio de sus tres calificaciones parciales.\
//    * 30% de la calificaci\'f3n del examen final.\
//    * 15% de la calificaci\'f3n de un trabajo final.\

    var nota1 = 7
    var nota2 = 6
    var nota3 = 5
    var promedio = (nota1 + nota2 + nota3) / 3
    var avgnotas = promedio * 55 / 100
    var exam = 8
    var avgexam = (exam * 30) / 100
    var trabajo = 6
    var avgtrabajo = (trabajo * 15) / 100
    var notafinal = avgnotas + avgexam + avgtrabajo
    print("Nota final del alumno es:" , notafinal)

//Ej8. Escribir un algoritmo para calcular la nota final de un estudiante, considerando que: \
//    por cada respuesta correcta 5 puntos, por una incorrecta -1 y por respuestas en \
//    blanco 0. Imprime el resultado obtenido por el estudiante.\

var correctas = 4 * 5
var incorrectas = 4 * -1
var nulas = 2 * 0
var avgnotafinal = (correctas + incorrectas + nulas) / 3
print("Nota final" , avgnotafinal)


//Ej9. Calcula el sueldo de un trabajador, cuyo valor es su sueldo base m\'e1s un numero de horas\
//extra trabajadas, pero teniendo en cuenta que el dicho numero de horas puede ser nulo

var sueldobase = 950
var horasR = Int.random(in: 0..<10)
var preciohora = 60

var totalhoras =  preciohora * horasR

 var totalsueldo2 = totalhoras + sueldobase
print("Sueldo total con horas tendiendo en cuenta que ha trabajado: ", horasR , " y su suedo es de " , sueldobase , "el total es de: ", totalsueldo2)
//var sueldoTotal = sueldo + (horasExtra ?? horasAux) * sueldoHora

