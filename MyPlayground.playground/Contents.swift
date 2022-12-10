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

let playersFiltered = players.filter { $0.contains { $0 == "a" }
}
print(playersFiltered)
