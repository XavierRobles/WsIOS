import UIKit

var str = "Hello, playground"


let sum = 16 // a + b
let diff = 4 // a - b

// sum + diff = a + b + a - b = a + a = 2*a
// -> sum + diff = 2*a
// -> a = (sum + diff) / 2

var a = (sum + diff) / 2 // 10
var b = sum - a // 6






var width = 8
var height = 12
var x = 4
var y = 3

var perimeter = 2 * (width + height)

var bigArea = width * height
var smallArea = (width - x) * (height - y)
var area = bigArea - smallArea






var a = 123

print(a % 10)






var x = 3
var y = 2
var bob = 12

// alice + x = (bob + x) * y
// alice = (bob + x) * y - x
var alice = (bob + x) * y - x









var numberOfBoys = 20
var numberOfGirls = 60

var numberOfStudents = numberOfBoys + numberOfGirls
var boyPercentage = numberOfBoys * 100 / numberOfStudents
print(boyPercentage)
var girlPercentage = numberOfGirls * 100 / numberOfStudents
print(girlPercentage)





var a = 12
var b = 3

if a % b == 0 {
    print("divisible")
} else {
    print("not divisible")
}







var a = 2
var b = 2
var c = 2

if (a == b) || (a == c) || (b == c) {
    print("At least two variables have the same value")
} else {
    print("All the values are different")
}



let year = 2014
if year % 4 == 0 {
    if year % 100 == 0 && year % 400 != 0 {
        print("Not a leap year!")
    } else {
        print("Leap year!")
    }
} else {
    print(year, terminator: "")
    print("Not a leap year!")
}





import Foundation

var randomNumber = random()

if randomNumber % 2 == 0 {
    print("heads")
} else {
    print("tails")
}





var x = 1
var y = 2
var lowX = 1
var lowY = 1
var highX = 3
var highY = 3

if x >= lowX && y >= lowY && x <= highX && y <= highY {
    print("inside")
} else {
    print("not inside")
}







var hp = 75

if hp > 0 && hp < 20 {
    hp = 20
} else if hp % 10 != 0 {
    hp = hp / 10
    hp = hp + 1
    hp = hp * 10
}

print(hp)





var finalsGrade = 2.0
var midtermGrade = 4.0
var projectGrade = 3.0

print(0.5 * finalsGrade + 0.2 * midtermGrade  + 0.3 * projectGrade)




var number = 5.1517

var intNumber = Int(number * 10.0)

var roundedNumber = Double(intNumber) / 10.0






var grade1 = 7.0
var grade2 = 9.0
var grade3 = 5.0
var yourGrade = 8.0

var averageGrade = (grade1 + grade2 + grade3 + yourGrade) / 4.0

if yourGrade > averageGrade {
    print("above average")
} else {
    print("below average")
}




var N = 10
// with a for loop
for _ in 1...N {
    print("I will not skip the fundamentals!")
}




var N = 10

var cnt = 1

while cnt <= N {
    print(cnt * cnt)

    cnt = cnt + 1
}




var N = 3

for i in 1...N {
    for j in 1...i {
        print("*", terminator: "")
    }
    print("")
}



print("ajedrez")
let N = 8

// prints the top border
print("+", terminator: "")
for _ in 1...N {
    print("-", terminator: "")
}
print("+")

for i in 1...N {
    // prints the left border
    print("|", terminator: "")
    for j in 1...N {
        if i % 2 == j % 2 {
            print("#", terminator: "")
        } else {
            print(" ", terminator: "")
        }
    }
    // prints the right border a a new line
    print("|")
}

// prints the bottom border
print("+", terminator: "")
for _ in 1...N {
    print("-", terminator: "")
}
print("+")




//fibonacci
var N = 10

var a = 1
var b = 0

for _ in 1...N {
    print(a)
    var tmp = a + b
    b = a
    a = tmp
}




let N = 30
var fib = [Int](repeating: 1, count: N)

for i in 2..<N {
    fib[i] = fib[i-1] + fib[i-2]
}

for number in fib {
    print(number)
}




var N = 5

// the current leap year
var leapYear = 2016

// the number of leap years that were printed so far
var cnt = 0

// until we print N years
while cnt < N {
    // print the next leap year
    print(leapYear)

    // increase the counter
    cnt += 1

    // go to the next leap year
    leapYear += 4
    if leapYear % 100 == 0 && leapYear % 400 != 0 {
        leapYear += 4
    }

}


//imprimir numero inverso
var number = 1234

while number > 0 {
    print(number % 10, terminator: "")
    number /= 10
}







var a = 24
var b = 18

var maxDiv = a

if b < maxDiv {
    maxDiv = b
}

var gcd = 1

for i in 1...maxDiv {
    if (a % i == 0) && (b % i == 0){
        gcd = i
    }


print(gcd) // 6

}
/*



var number = 17

var numberOfDivisors = 0

for i in 1...number {
    if number % i == 0 {
        numberOfDivisors += 1
    }
}

if numberOfDivisors == 2 {
    print("prime")
} else {
    print("not prime")
}







var a = 14
var b = 23

var sum = a + b

var formattedSum = "\(a) + \(b) = \(sum)"







var aString = "Replace the letter e with *"

var replacedString = ""

for character in aString.characters {
    var char = "\(character)"
    if char == "e" {
        replacedString = replacedString + "*"
    } else {
        replacedString = replacedString + char
    }
}



var aString = "this string has 29 characters"
var reverse = ""

for character in aString.characters {
    var asString = "\(character)"
    reverse = asString + reverse
}

print(reverse)
//sretcarahc 92 sah gnirts siht




//palindromo
let aString = "anutforajaroftuna"

var reverse = ""

for character in aString.characters {
    var char = "\(character)"
    reverse = char + reverse
}

print(aString == reverse)










var problem = "split this string into words and print them on separate lines"

var word = ""

for character in problem.characters {
    if character == " " {
        print(word)
        word = ""
    } else {
        word += "\(character)"
    }
}

// don't forget the last word
print(word)




var listOfNumbers = [1, 2, 3, 10, 100]

var maxVal = listOfNumbers[0]

for number in listOfNumbers {
    if maxVal < number {
        maxVal = number
    }
}

print(maxVal)




var listOfNumbers = [1, 2, 3, 10, 100]

for var i = 1; i < listOfNumbers.count; i += 2 {
    print(listOfNumbers[i])
}




var listOfNumbers = [1, 2, 3, 10, 100, 2]

for var i = listOfNumbers.count - 1; i >= 0; --i {
    print(listOfNumbers[i])
}



In real life people don’t implement sorting anymore, they just call it.

array.sort(by: <) // will sort the array in ascending order
array.sort(by: >) // will sort the array in descending order

// you can also use the sorted method to create a sorted copy
let sortedArray = array.sorted(by: <)
var listOfNumbers = [3, 2, 100, 10, 1]

listOfNumbers.sort(by: <)

print(listOfNumbers)
// [1, 2, 3, 10, 100]

listOfNumbers.sort(by: >)

print(listOfNumbers)
// [100, 10, 3, 2, 1]
So to solve the problem we would write:

var listOfNumbers = [3, 2, 100, 10, 1]

listOfNumbers.sort(by: <)


var listOfNumbers = [1, 2, 3, 10, 100]

var otherNumbers = [1, 2, 3, 4, 5, 6]

for otherNumber in otherNumbers {
    for number in listOfNumbers {
        if number == otherNumber {
            print(number)
            break
        }
    }
}







func isOdd(number: Int) -> Bool {
    if number % 2 == 1 {
        return true
    } else {
        return false
    }
}





func min2(_ a: Int, _ b: Int) -> Int {
    if a < b {
        return a
    } else {
        return b
    }
}





func lastDigit(_ number: Int) -> Int {
    return number % 10
}



func first(_ N: Int) -> [Int] {
    var numbers:[Int] = []

    for number in 1...N {
        numbers.append(number)
    }

    return numbers
}





import Foundation

func countdown(_ N: Int) {
    var i = N

    while i > 0 {
        print(i)

        sleep(1)

        i -= 1
    }

    print("GO!")
}



func divides(_ a: Int, _ b: Int) -> Bool {
    return a % b == 0
}

func countDivisors(_ number: Int) -> Int {
    var cnt = 0
    for i in 1...number {
        if divides(number, i) {
            cnt += 1
        }
    }
    return cnt
}

func isPrime(_ number: Int) -> Bool {
    return countDivisors(number) == 2
}



func printFirstPrimes(_ count: Int) {
    var i = 2
    var printed = 0
    while printed < count {
        if isPrime(i) {
            print(i)
            ++printed
        }
        ++i
    }
}


func reverse(_ numbers: [Int]) -> [Int] {
    var reversed: [Int] = []

    for number in numbers {
        reversed.insert(number, at: 0)
    }

    return reversed
}


func sum(_ numbers: [Int]) -> Int {
    var sum = 0

    for number in numbers {
        sum += number
    }

    return sum
}


func levelCost(heights: [Int], maxJump: Int) -> Int {
    var totalEnergy = 0
    var lastHeight = 0

    for height in heights {
        if lastHeight == 0 {
            lastHeight = height
        } else {
            var jumpHeight = lastHeight - height
            if jumpHeight < 0 {
                jumpHeight = -jumpHeight
            }

            if jumpHeight > maxJump {
                return -1
            }

            if jumpHeight == 0 {
                totalEnergy += 1
            } else {
                totalEnergy += 2 * jumpHeight
            }

            lastHeight = height
        }
    }

    return totalEnergy
    
    
    
    
    
    func push(_ number: Int, _ stack: inout [Int]) {
    stack.append(number)
}

func top(_ stack: [Int]) -> Int? {
    if stack.count == 0 {
        return nil
    }
    return stack[stack.count - 1]
}

func pop(_ stack: inout [Int]) -> Int? {
    var result = top(stack)

    if stack.count > 0 {
        stack.remove(at: stack.count - 1)
    }

    return result
}
}


func fibonacci(_ i: Int) -> Int {
    if i <= 2 {
        return 1
    } else {
        return fibonacci(i - 1) + fibonacci(i - 2)
    }
}

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]

let multiples = numbers.filter { $0 % 3 == 0 }

print(multiples


var numbers = [1, 2, 3, 4, 5, 6]

numbers.sort(by: { x, y in
    func countDivisors(_ number: Int) -> Int {
        var count = 0
        for i in 1...number {
            if number % i == 0 {
                count += 1
            }
        }
        return count
    }
    return countDivisors(x) < countDivisors(y)
})



enum HandShape {
    case rock
    case paper
    case scissors
}

enum MatchResult {
    case win
    case draw
    case lose
}

func match(_ first: HandShape, _ second: HandShape) -> MatchResult {
    if first == second {
        return .draw
    }

    if first == .rock && second == .scissors {
        return .win
    }

    if first == .paper && second == .rock {
        return .win
    }

    if first == .scissors && second == .paper {
        return .win
    }

    return .lose
}






var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]

var firstNames: [String] = []

for person in people {
    if let firstName = person["firstName"] {
        print(firstName)
        firstNames.append(firstName)
    }
}








func suma(_ num1:Int, _ num2:Int) -> Int {
    return num1 + num2
}
let num1 = 5
let num2 = 8
print("\(num1) + \(num2) = \(suma(num1, num2))")









func segundosAnyo(_ anyos:Int) -> Int {
    let dias = 365
    let horas = 24
    let segundos = 3600
    return dias * horas * segundos * anyos
}
let anyos = 3
print("La cantidad de segundos en \(anyos) años es \(segundosAnyo(anyos))")


func pixeles(alto:Int, ancho:Int) -> Int {
    return(alto * ancho)
}
let alto = 720
let ancho = 480
print("La cantidad de píxeles de una pantalla de \(alto)x\(ancho) es \(pixeles(alto:720, ancho:480))")



func intercambiar(_ a:inout Int, _ b:inout Int) {
    let aux = a
    a = b
    b = aux
}
var num1 = 5
var num2 = 10
intercambiar(&num1, &num2)
print("El primer número es: \(num1) y el segundo es: \(num2)")


func ultimo(_ num:Int) -> Int {
    return num % 10
}
let num = 2479
print("La última cifra de \(num) es \(ultimo(num))")

func edadHumano(_ edadPerro:Int) -> Int {
    return edadPerro * 7
}
let edadPerro = 7
print("\(edadPerro) años de un perro equivalen a \(edadHumano(edadPerro)) años de un humano")


func esPar(_ num:Int) -> Bool {
    return num % 2 == 0
}

let num = 24

// Con if
if esPar(num) {
    print("El numero \(num) es par")
}
else {
    print("El numero \(num) es impar")
}

// Con el operador ?
print("El numero \(num) es " + (esPar(num) ? "par" : "impar"))



func esDivisible(_ num1:Int, _ num2:Int) -> Bool {
    return num2 != 0 && num1 % num2 == 0
}

let num1 = 3
let num2 = 1

// Con if
if esDivisible(num1, num2) {
    print("El número \(num1) es divisible entre \(num2)")
}
else {
    print("El número \(num1) no es divisible entre \(num2)")
}

// Con el operador ?
print("El número \(num1) \(esDivisible(num1, num2) ? "" : "no") es divisible entre \(num2)")



func calcularPorcentajes(hombres:Int, mujeres:Int) -> (hombres:Int, mujeres:Int) {
    let total = hombres + mujeres
    let porcentajeHombres = (hombres * 100) / total
    let porcentajeMujeres = (mujeres * 100) / total

    return (porcentajeHombres, porcentajeMujeres)
}

let hombres = 12
let mujeres = 15
let porcentaje = calcularPorcentajes(hombres:12, mujeres:15)

print("De \(hombres + mujeres) personas, \(mujeres) son mujeres y \(hombres) son hombres, es decir, \(porcentaje.hombres)% de hombres y \(porcentaje.mujeres)% de mujeres").




func suma(_ fraccion1:(Int, Int), _ fraccion2:(Int, Int)) -> (Int, Int) {
    let numerador = fraccion1.0 * fraccion2.1 + fraccion2.0 * fraccion1.1
    let denominador = fraccion1.1 * fraccion2.1

    return (numerador, denominador)
}

let fraccion1 = (1, 2)
let fraccion2 = (2, 3)
print("La suma de \(fraccion1) y \(fraccion2) es \(suma(fraccion1, fraccion2)))




enum Mano {
    case piedra, papel, tijeras
}

enum Resultado {
    case gana, empata, pierde
}

func jugar(jugador1:Mano, jugador2:Mano) -> Resultado {
    if jugador1 == jugador2 { return .empata }

    if jugador1 == .piedra  && jugador2 == .tijeras ||
       jugador1 == .papel   && jugador2 == .piedra  ||
       jugador1 == .tijeras && jugador2 == .papel { return .gana }

    return .pierde
}

print(jugar(jugador1:.papel, jugador2:.tijeras))




func suma(_ fracciones:(Int, Int)...) -> (Int, Int) {
    var resultado = (0, 1)

    for fraccion in fracciones {
        resultado.1 *= fraccion.1
    }
    for fraccion in fracciones {
        resultado.0 += (resultado.1 / fraccion.1) * fraccion.0
    }

    return resultado
}

print(suma((1,2), (3,4), (5,2), (4,3)))



let moneda = Int.random(in:1...3)

if      moneda == 1 { print("Cara")  }
else if moneda == 2 { print("Cruz")  }
else                { print("Canto") }


let distancia:UInt = 15

switch distancia {
    case 0:
        print("Aquí")
    case 1..<5:
        print("Bastante cerca")
    case 5..<15:
        print("Cerca")
    case 15...40:
        print("Más o menos cerca")
    default:
        print("Lejos")
}



var array1: [Int] = [5, 8, 10, 16, 23, 40]
var array2 = [5, 8, 10, 16, 23, 40]
print(array1)
print(array2)



var array1 = [5, 8, 10, 16, 23, 40]
var array2 = [5, 8, 10, 16, 23, 40]
let array3 = [118, 137, 5615]

array1.append(contentsOf: array3)
array2 += array3

print(array1)
print(array2)


var array = [5, 8, 10, 16, 23, 40]

array[3] = 45

print(array)
var array = [5, 8, 10, 16, 23, 40]

array[1...3] = [1, 2, 3, 4, 5, 6]

print(array)

var personas = [(nombre: "Juan", apellido: "Rubio"),
                (nombre: "Pepe", apellido: "García"),
                (nombre: "Luis Enrique", apellido: "Peinado"),
                (nombre: "Álvaro", apellido: "Sánchez"),
                (nombre: "Pablo", apellido: "Ruiz")]

for persona in personas { print(persona) }




let a = 5, b = 6
let resultado = a < b ? (menor:a, mayor:b) : (menor:b, mayor:a)
print(resultado)




enum Direccion {
    case arriba, abajo, izquierda, derecha
}

var ubicacion = (x: 0, y: 0)
let pasos:[Direccion] = [.abajo, .abajo, .derecha, .arriba]

for paso in pasos {
    switch paso {
        case .arriba:    ubicacion.y += 1
        case .abajo:     ubicacion.y -= 1
        case .derecha:   ubicacion.x += 1
        case .izquierda: ubicacion.x -= 1
    }
}

print(ubicacion)




enum TipoMoneda {
    case cents5, cents10, cents20, cents50, euro1, euro2
}

let monedas:[(cantidad:Int,tipo:TipoMoneda)] = [(2,.cents10), (5,.euro1), (3,.euro2)]

var total = 0

for (cantidad, tipo) in monedas {
    switch tipo {
        case .cents5:
            print("\(cantidad) monedas de 5 céntimos")
            total += cantidad * 5
        case .cents10:
            print("\(cantidad) monedas de 10 céntimos")
            total += cantidad * 10
        case .cents20:
            print("\(cantidad) monedas de 20 céntimos")
            total += cantidad * 20
        case .cents50:
            print("\(cantidad) monedas de 50 céntimos")
            total += cantidad * 50
        case .euro1:
            print("\(cantidad) monedas de 1 euro")
            total += cantidad * 100
        case .euro2:
            print("\(cantidad) monedas de 2 euros")
            total += cantidad * 200
    }
}

print("Total: \(Double(total)/100.0) euros")
*/
}
