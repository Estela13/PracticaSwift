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

enum PlayersPosition {
    case goalkeeper
    case forward
    case middleForward
    case midfielder
    case rightWinger
    case leftWinger
    case defender
    case centerBack
}

// EJERCICIO 5:

class WorldCupMember {
    var name: String = ""
    var lastname: String = ""
    var country: String = ""
    var role: Role
    
    init (name: String = "", lastname: String = "", country: String = "", role: Role){
        self.name = name
        self.lastname = lastname
        self.country = country
        self.role = role
}
    
enum Role {
    case player
    case coach
    case medicalTeam
    case assistant
    case referee
    case linesMan
}

    var member: WorldCupMember = WorldCupMember(role: WorldCupMember.Role.coach)
}
// EJERCICIO 6:

struct WorldCup {
    var footballTeam: [Team]
}
    
    
class Player {
    var name: String = ""
    var lastname: String = ""
    
    
    init (name: String = "", lastname: String = "" ) {
    }
}
    
struct Team {
    var country: String = ""
    var players: Player
    var coach: String = ""
    var points: Int = 0
    
}
    
var spain = Team (country: "Spain", players: Player (name: "Alvaro", lastname: "Morata"), coach: "Luis Enrique")
var morocco = Team (country: "Morocco", players: Player (name: "", lastname: ""), coach: "")
var france = Team (country: "Francia", players: Player (name: "", lastname: ""), coach: "")
var england = Team (country: "Inglaterra", players: Player (name: "", lastname: ""), coach: "")
var germany = Team (country: "Germany", players: Player(name: "", lastname: ""), coach: "")
var italy = Team (country: "Italy", players: Player(), coach: "")
var qatar = Team (country: "Qatar", players: Player(), coach: "")
var australia = Team (country: "Australia", players: Player(), coach: "")
var argentina = Team (country: "Argentina", players: Player(), coach: "")
var switzerland = Team (country: "Switzerland", players: Player(), coach: "")
var uruguay = Team (country: "Uruguay", players: Player(), coach: "")
var unitedStates = Team(country: "United States", players: Player())
var saudiArabia = Team(country: "Saudi Arabia", players: Player())
var ghana = Team(country: "Ghana", players: Player())
var wales = Team(country: "Wales", players: Player())
var costaRica = Team(country: "Costa Rica", players: Player())
    
    
//EJERCICIO 7:

class Match {
    let localTeam: String
    let visitorTeam: String
    let points: (Int, Int)
    
    init(localTeam: String, visitorTeam: String, points: (Int, Int)) {
        self.localTeam = localTeam
        self.visitorTeam = visitorTeam
        self.points = points
    }
}
    
var teamsList = ["Spain", "Morocco", "France", "England", "Germany", "Italy", "Qatar", "Australia", "Argentina", "Switzerland", "Uruguay", "United States", "Saudi Arabia", "Ghana", "Wales", "Costa Rica"]
    
var teamsEmpty: [String] = []
    
for _ in teamsList {
    var resultLocal = Int.random(in: 0...10)
    var resultVisit = Int.random(in: 0...10)
    var localTeam = teamsList.randomElement()!
    var visitorTeam = teamsList.randomElement()!
    print("Game: \(localTeam): \(resultLocal) - \(visitorTeam) \(resultVisit)")
}

//EJERCICIO 8:

class Group {
    var name: String
    var teams: [Team]
    var matches: [Match]
    
    init(name: String, teams: [Team], matches: [Match]) {
        self.name = name
        self.teams = teams
        self.matches = matches
    }
}
var groupA: [String] = []


for _ in teamsList {
    var team1 = teamsList.randomElement()!
    groupA.append(team1)
    teamsList.removeLast()
    if groupA.count > 3 {
        break
    }
}
        
//EJERCICIO 9:


