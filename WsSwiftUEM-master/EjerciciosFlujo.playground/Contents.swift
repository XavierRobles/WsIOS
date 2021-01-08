import UIKit
//
//  Ejercicios2_Xavi.swift
//  WsSwiftUEM
//
//  Created by Alumno on 12/11/2020.
//
//Alternativas
//Ej1. Algoritmo que pida un número y diga si es positivo, negativo o 0.
//Ej2. Escribe un programa que lea un número e indique si es par o impar.
//Ej3. Escribe un programa que dado un nombre de usuario y una contraseña
//y si se ha introducido "pepe" y "asdasd" se indica "Has entrado al sistema",

//Ej4. Programa que dada una cadena por teclado y compruebe si la primera letra es un "/"
//y la segunda un "*", en caso afirmativo se escribira la palabra entera, en caso contrario
//escribir "no es correcta".
//Ej5. Algoritmo que dado tres números y los muestre ordenados (de mayor a menor);
//Ej6. //Algoritmo que pida los puntos centrales x1,y1,x2,y2 y los radios r1,r2 de dos
//circunferencias y las clasifique en uno de estos estados:
//exteriores
//tangentes exteriores
//secantes
//tangentes interiores
//interiores
//concéntricas
//Repetitivas
//Ej7. //Crea una aplicación que pida un número y calcule su factorial (El factorial de
//un número es el producto de todos los enteros entre 1 y el propio número y se
//representa por el número seguido de un signo de exclamación.
//Ej8. //Algoritmo que cree un array con 10 numeros. Debe imprimir la suma
// y la media de todos los números introducidos.
//Ej9. //Algoritmo que cree un array con 10 numeros. El programa debe informar de cuantos números
//introducidos son mayores que 0, menores que 0 e iguales a 0.
//Ej 10 //Escribir un programa que imprima todos los números pares entre dos números
//Ej 11 ////Una empresa tiene el registro de las horas que trabaja diariamente un empleado
//durante la semana (seis días), así como el sueldo que recibirá por las horas trabajadas.
//Las horas estan en un array y el precio hora esta en 30€



import Foundation
//Ej1. Algoritmo que pida un número y diga si es positivo, negativo o 0.
var num1 = 3
if num1>=0 {
    print("Es Positivo")
}else {
    print("Es negativo")
}
//Ej2. Escribe un programa que lea un número e indique si es par o impar.
if num1%2==0 {
    print("Es par")
}else{
    print("Es impar")
}
//Ej3. Escribe un programa que dado un nombre de usuario y una contraseña
//y si se ha introducido "pepe" y "asdasd" se indica "Has entrado al sistema",
var user = "pepe"
var pass = "asdasd"
if user == "pepe" && pass == "asdasd" {
    print("Has entrado en el sistema")
}else{
    print("Error de credenciales")
}
//Ej4. Programa que dada una cadena por teclado y compruebe si la primera letra es un "/"
//y la segunda un "*", en caso afirmativo se escribira la palabra entera, en caso contrario
//escribir "no es correcta".
var cadena = "/*fff"

var char1 = cadena[cadena.startIndex]
var char2 = cadena[cadena.index(cadena.startIndex, offsetBy: 1)]
if char2 == "*"{
    print(char1)
    print(char2, "Es correcto")    
}
else{
print(char2, "Incorrecto")
}
//Ej5. Algoritmo que dado tres números y los muestre ordenados (de mayor a menor);

var num2 = 7
var num3 = 6
var num4 = 9

if num2 > num3 &&  num2 > num4 {
    print("El mayor es: ", num2)
    
}else if num3 > num4{
    print("El mayor es ", num3)
}else{
    print("El mayor es: ",  num4)
}

//Ej6. //Algoritmo que pida los puntos centrales x1,y1,x2,y2 y los radios r1,r2 de dos

var x1 = 5.0
var y1 = 3.0
var x2 = 2.0
var y2 = 7.0

var r1 = 3.0
var r2 = 2.0

var sumaRadios = r1 + r2
var restaRadios = r1 - r2
var restaRadiosi = r2 - r1

//circunferencias y las clasifique en uno de estos estados:
var distanciaCentros = sqrt(pow(x2 - x1,2) + pow(y2 - y1,2))
print(distanciaCentros)
print("SumaRadios " , sumaRadios)
print("Restaradios " ,restaRadios)
print("Restaradiosi " ,restaRadiosi)

if distanciaCentros > sumaRadios {
    //exteriores
    print("Exteriores")
}else if distanciaCentros == sumaRadios{
     //tangentes exteriores
    print("Tagentes Exteriores")
}else if distanciaCentros < sumaRadios{
     //secantes
    print("Secantes")
   
}else if distanciaCentros == restaRadiosi{
    //tangentes interiores
    print("Tangentes interiores")
}else if distanciaCentros == 0 {
    //concéntricas
    print("Concentricas")
}else{
//interiores
 print("Interiores")
}

//Repetitivas


//Ej7. //Crea una aplicación que pida un número y calcule su factorial (El factorial de
//un número es el producto de todos los enteros entre 1 y el propio número y se
//representa por el número seguido de un signo de exclamación.
var n = 6
for i in 1...5 {
    n = n*i
    print(n)
}
print("El factorial de ", n)

//Ej8. //Algoritmo que cree un array con 10 numeros. Debe imprimir la suma
// y la media de todos los números introducidos.

var arrayNumeros = [Int]()
var suma = 0;
var numerosAleatorios = 0;
for i in Range(1...10){
    numerosAleatorios = Int.random(in: 1...100)
    arrayNumeros.append(numerosAleatorios)
    suma += numerosAleatorios
}
var media = suma / arrayNumeros.count
print("Suma: ", suma)
print("Media: ", media)
//Ej9. //Algoritmo que cree un array con 10 numeros. El programa debe informar de cuantos números
//introducidos son mayores que 0, menores que 0 e iguales a 0.

var arraynumeros = [Int]()
var iguales = 0
var mayores = 0
var menores = 0
for index in -5...5 {
    arraynumeros.append(index)
    print("Array \(index)")
    if index == 0{
        iguales += 1
    }else if index <= 0{
        menores += 1
    }else{
        mayores += 1
    }
    
}
print(arraynumeros)
print("Total de numeros menores a: ", menores)
print("Total de numeros mayores a 0: ", mayores)
print("Total de numeros iguales a 0: ", iguales)



//Ej 10 //Escribir un programa que imprima todos los números pares entre dos números
var numpar = 0
for index in 1...10  {
    if index % 2 == 0 {
        numpar += 1
        print(index)
    }
}
print("Numeros pares " , numpar)



//Ej 11 ////Una empresa tiene el registro de las horas que trabaja diariamente un empleado
//durante la semana (seis días), así como el sueldo que recibirá por las horas trabajadas.
//Las horas estan en un array y el precio hora esta en 30€

var horas = [Int]()
var jornada = 8;
var total = 0
var perciohora = 30
var salario = 0
var dias = [ "lunes",  "martes" , "miercoles" , "jueves" , "viernes" , "sabado" ]
for _ in dias{
    horas.append(jornada)
    total += horas[0]
    salario = total * perciohora
}
print("Numero total de horas trabajadas a la semana",total, "Salrio a percibir:", salario)


var variablenula : String?
variablenula = nil
variablenula = "ffff"
