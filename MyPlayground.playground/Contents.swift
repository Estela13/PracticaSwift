import UIKit

// EJERCICIO 1:

var primes: [Int] = []

var counter = 0
for i in 2...600 {
    for number in 1...i where i % number == 0 {
        counter += 1
    }
    if !(counter > 2) && primes.count < 100 {
        primes.append(i)
    }
    counter = 0
}
print(primes)
print("The last 10 prime numbers are: \(primes[90...])")

// EJERCICIO 2:

let sumPrimes = primes[0...49]
let sum = sumPrimes.reduce(0, +)
print("The addition of the first 50 prime numbers is: \(sum)")

// EJERCICIO 3:
var players: [String] = ["Vinicius", "Messi", "Ronaldo", "Pedri", "Mbappe", "Modric", "Militao", "Morata", "Valverde", "Benzema", "Piqué"]

var playersFiltered: [String] = []

func vocals()  -> [String] {
    var count = 0
    for i in players {
        for char in i where char == "a" || char == "e" || char == "i" || char == "o" || char == "u"  {
            count += 1
        }
        if count > 2 {
            playersFiltered.append(i)
        }
        count = 0
    }
    return playersFiltered
    
}
print("The players with more than two vocals in their names are: \(vocals())")
    
// EJERCICIO 4:

enum Players {
    case portero
    case lateralDerecho
    case central
    case lateralIzquierdo
    case medioCentro
    case extremoDerecha
    case extremoIzquierda
    case defensa
    case centroDelantero
}

// EJERCICIO 5:

class WorldCupMember {
    var name: String = ""
    var country: String = ""
    var role: Role
    
    init (name: String = "", country: String = "", role : Role){
        self.name = name
        self.country = country
        self.role = role
}
    
enum Role {
    case jugador
    case seleccionador
    case médico
    case asistente
    case arbitro
    case juezDeLinea
}

}
